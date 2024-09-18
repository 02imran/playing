import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapTest extends ConsumerStatefulWidget {
  const GoogleMapTest({super.key, required this.latLng});

  final LatLng latLng;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GoogleMapState();
}

class _GoogleMapState extends ConsumerState<GoogleMapTest> {
  final Completer<GoogleMapController> _completer = Completer();

  List<Marker> list = [
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(23.7534016, 90.4392946),
      infoWindow: InfoWindow(title: "My marker"),
    ),
    const Marker(
        markerId: MarkerId("2"),
        position: LatLng(23.7525144, 90.4358995),
        infoWindow: InfoWindow(title: "New marker")),
  ];

  List<Marker> markerList = [];

  @override
  void initState() {
    markerList.addAll(list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            GoogleMapController controller = await _completer.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(target: widget.latLng, zoom: 15, )));
                setState(() {
                  
                });
          },
          label: const Icon(Icons.plus_one)),
      body: GoogleMap(
        markers: Set<Marker>.of(markerList),
        initialCameraPosition: CameraPosition(target: widget.latLng, zoom: 15),
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        onMapCreated: (controller) {
          _completer.complete(controller);
        },
      ),
    );
  }
}
