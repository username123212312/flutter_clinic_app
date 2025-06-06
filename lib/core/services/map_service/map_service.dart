import 'dart:developer';

import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';
import 'package:dio/dio.dart';

import '../../utils/utils.dart';

class MapService {
  static final MapService _instance = MapService._internal();
  factory MapService() => _instance;
  MapService._internal();

  final Location _location = Location();
  final Dio _dio = Dio(
    BaseOptions(
      headers: {'User-Agent': 'flutter-app'},
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<LatLng?> getCurrentLocation() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) return null;
    }

    PermissionStatus permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return null;
    }

    final loc = await _location.getLocation();
    if (loc.latitude != null && loc.longitude != null) {
      return LatLng(loc.latitude!, loc.longitude!);
    }
    return null;
  }

  Future<String?> reverseGeocode(LatLng latLng) async {
    final url = 'https://nominatim.openstreetmap.org/reverse';

    try {
      final response = await _dio.get(
        url,
        queryParameters: {
          'format': 'jsonv2',
          'lat': latLng.latitude,
          'lon': latLng.longitude,
          'accept-language': 'en',
        },
      );

      final data = response.data;
      eLog(data.toString());

      if (data != null && data['address'] != null) {
        final addr = data['address'];

        final district = addr['city'] ?? addr['city_district'];
        final state = addr['state'];
        final country = addr['country'];

        // Build the custom formatted address
        return [district, state, country].where((e) => e != null).join(', ');
      }
    } catch (e) {
      log("Dio error: $e");
    }

    return null;
  }
}
