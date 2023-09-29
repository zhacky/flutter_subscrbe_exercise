import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final mapController = MapController();
  final markers = MarkerLayer(
      markers: [
        Marker(
            width: 40.0,
            height: 40.0,
            point: const LatLng(8.471843838781064, 124.64964503002264),
            builder: (BuildContext context) {
              return const Icon(Icons.location_on, size: 40.0, color: Colors.red);
            }),
        Marker(
            width: 40.0,
            height: 40.0,
            point: const LatLng(40.74627169304661, -74.00641716068664),
            builder: (BuildContext context) {
              return const Icon(Icons.location_on, size: 40.0, color: Colors.red);
            }),
        Marker(
            width: 40.0,
            height: 40.0,
            point: const LatLng(40.73388846462313, -73.99952394534647),
            builder: (BuildContext context) {
              return const Icon(Icons.location_on, size: 40.0, color: Colors.red);
            }),
        Marker(
            width: 40.0,
            height: 40.0,
            point: const LatLng(40.73296802881592, -73.9790720588411),
            builder: (BuildContext context) {
              return const Icon(Icons.location_on, size: 40.0, color: Colors.red);
            }),
      ])
  ;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
          zoom: 18, center: const LatLng(40.74627169304661, -74.00641716068664)),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        markers
      ],
    );
  }
}
