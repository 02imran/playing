import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class AddressFindFromLatlng extends ConsumerStatefulWidget {
  const AddressFindFromLatlng(
      {super.key, required this.lat, required this.lng});

  final double lat;
  final double lng;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddressFindFromLatlngState();
}

class _AddressFindFromLatlngState extends ConsumerState<AddressFindFromLatlng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                List<Placemark> placemarks = await placemarkFromCoordinates(widget.lat, widget.lng);
                print("address ::::::${placemarks.first}");
              },
              child: const Text("Locate"))
        ],
      ),
    );
  }
}
