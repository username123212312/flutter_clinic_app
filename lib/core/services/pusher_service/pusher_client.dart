import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../consts/app_constants.dart';

class PusherService {
  static PusherService? _singleton;
  static late PusherChannelsFlutter _pusherClient;
  final String token;
  static bool _isInitialized = false;

  PusherService._({required this.token});

  static Future<PusherService> init({required String token}) async {
    if (_singleton == null || token != _singleton?.token) {
      _singleton = PusherService._(token: token);
      await _singleton!._initializePusher();
    }
    return _singleton!;
  }

  Future<void> _initializePusher() async {
    _pusherClient = await createPusherClient(token);
    _isInitialized = true;
  }

  static PusherChannelsFlutter get instance {
    if (!_isInitialized) {
      throw Exception(
        'Pusher not initialized. Call PusherService.init() first.',
      );
    }
    return _pusherClient;
  }

  static Future<String>? get socketId => _pusherClient.getSocketId();

  // Helper methods for common operations
  static Future<PusherChannel> subscribeToChannel(
    String channelName, {
    dynamic onEvent,
    dynamic Function(dynamic)? onSubscriptionSucceeded,
    dynamic onSubscriptionError,
    dynamic onMemberAdded,
    dynamic onMemberRemoved,
    dynamic onSubscriptionCount,
  }) async {
    if (!_isInitialized) {
      throw Exception(
        'Pusher not initialized. Call PusherService.init() first.',
      );
    }

    final channel = await _pusherClient.subscribe(
      channelName: channelName,
      onEvent: onEvent,
      // onSubscriptionError: onSubscriptionError,
      // onMemberAdded: onMemberAdded,
      // onMemberRemoved: onMemberRemoved,
      // onSubscriptionCount: onSubscriptionCount,
    );

    return channel;
  }

  static Future<void> unsubscribeFromChannel(String channelName) async {
    if (!_isInitialized) {
      throw Exception(
        'Pusher not initialized. Call PusherService.init() first.',
      );
    }

    await _pusherClient.unsubscribe(channelName: channelName);
  }

  static Future<void> disconnect() async {
    if (!_isInitialized) return;

    await _pusherClient.disconnect();
  }

  static Future<void> connect() async {
    if (!_isInitialized) {
      throw Exception(
        'Pusher not initialized. Call PusherService.init() first.',
      );
    }

    await _pusherClient.connect();
  }

  // Get connection state
  static String get connectionState => _pusherClient.connectionState;
}

class PusherConfig {
  static void init() {
    if (appId == null || appId == '') {
      appId = dotenv.env['PUSHER_APP_ID'] ?? '';
      key = dotenv.env['PUSHER_APP_KEY'] ?? '';
      secret = dotenv.env['PUSHER_APP_SECRET'] ?? '';
      cluster = dotenv.env['PUSHER_APP_CLUSTER'] ?? '';
      hostEndPoint = AppConstants.serverUrl;
      hostAuthEndPoint = "$hostEndPoint/api/broadcasting/auth";
    }
  }

  static String? appId;
  static String? key;
  static String? secret;
  static String? cluster;
  static String? hostEndPoint;
  static String? hostAuthEndPoint;
}

Future<PusherChannelsFlutter> createPusherClient(String token) async {
  PusherChannelsFlutter pusherClient = PusherChannelsFlutter.getInstance();
  try {
    PusherConfig.init();
    await pusherClient.init(
      activityTimeout: 10000,
      logToConsole: true,
      apiKey: PusherConfig.key ?? dotenv.env['PUSHER_APP_KEY'] ?? '',
      cluster: PusherConfig.cluster ?? dotenv.env['PUSHER_APP_CLUSTER'] ?? '',
      onConnectionStateChange: (state, _) {
        log('Pusher Connection State: $state');
      },
      onError: (error, _, __) {
        log('Pusher Error: $error', error: error);
      },
      onAuthorizer: (channelName, socketId, options) async {
        log('Attempting to authorize $channelName with socket $socketId');
        try {
          final dio = Dio();

          final response = await dio.post<Map<String, dynamic>>(
            PusherConfig.hostAuthEndPoint ?? '',
            options: Options(
              headers: {
                'Authorization': 'Bearer $token',
                'Content-Type': 'application/json',
              },
            ),
            data: {'socket_id': socketId, 'channel_name': channelName},
          );

          log('Auth Response: ${response.data}');
          return response.data!; // Must return the auth payload
        } catch (e) {
          log('Pusher Auth Failed: $e');
          rethrow;
        }
      },
    );
    await pusherClient.connect();
  } catch (e) {
    log("ERROR: $e");
  }
  return pusherClient;
}
