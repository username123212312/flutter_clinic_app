import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../notification/notification_service.dart';
import '../shared_preferences/shared_preferences.dart';

class FCMService {
  final _messaging = FirebaseMessaging.instance;
  final _sharedPreferences = SharedPreferencesService();

  Future<void> init() async {
    await _messaging.requestPermission();

    final token = await _messaging.getToken();
    await _sharedPreferences.setToken('fcm_token', token ?? 'no token');

    log('🔑 FCM Token: $token');

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      if (notification != null) {
        NotificationService().show(
          title: notification.title ?? 'No Title',
          body: notification.body ?? 'No Body',
        );
      }
    });

    // Handle background tap
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      log('📲 App opened from notification');
      // Navigate or take action
    });

    // Handle app launched from terminated state
    final initial = await _messaging.getInitialMessage();
    if (initial != null) {
      log('🚀 App launched from terminated via notification');
    }

    // Set up background handler
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  }
}

// Top-level function
Future<void> _backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log('💤 Background message: ${message.notification?.title}');
}
