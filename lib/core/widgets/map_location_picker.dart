import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:our_flutter_clinic_app/core/utils/utils.dart';
import 'package:our_flutter_clinic_app/features/auth/view/widgets/custom_elevated_button.dart';
import '../../core/services/map_service/map_service.dart';

import 'package:latlong2/latlong.dart';

class MapLocationPicker extends StatefulWidget {
  const MapLocationPicker({super.key});

  @override
  MapLocationPickerState createState() => MapLocationPickerState();
}

class MapLocationPickerState extends State<MapLocationPicker> {
  LatLng? _selectedLocation;
  late final MapController _mapController = MapController();
  LatLng? _initialPosition;

  @override
  void initState() {
    super.initState();
    _loadUserLocation();
  }

  Future<void> _loadUserLocation() async {
    final pos = await MapService().getCurrentLocation();

    if (pos != null) {
      setState(() {
        _initialPosition = LatLng(pos.latitude, pos.longitude);
        _selectedLocation = LatLng(pos.latitude, pos.longitude);
      });
    }
  }

  void _onTap(LatLng point) {
    _mapController.move(point, 15, id: 'mapMove');
    setState(() {
      _selectedLocation = point;
    });
  }

  void _onConfirm() {
    if (_selectedLocation != null) {
      Navigator.of(context).pop(_selectedLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_initialPosition == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Container(
      height: 400,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: _selectedLocation ?? _initialPosition!,
                initialZoom: 15.0,
                onTap: (_, latLng) => _onTap(latLng),
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                  // All gestures except rotation
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),

                MarkerLayer(
                  markers: [
                    if (_selectedLocation == null)
                      Marker(
                        point: _initialPosition!,
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),

                    if (_selectedLocation != null)
                      Marker(
                        point: _selectedLocation!,
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: screenHeight(context) * 0.05,
            width: screenWidth(context) * 0.4,
            child: CustomElevatedButton(
              fontSize: 11,
              textColor: Colors.white,
              fillColor: Theme.of(context).colorScheme.primary,

              onTap: _selectedLocation != null ? _onConfirm : null,
              title: 'Confirm Location',
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
