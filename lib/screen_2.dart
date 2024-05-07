// https://www.youtube.com/watch?v=ZnZM8ot5lcc&list=PLJh8Hi_cW8DYP0LkOMzGA_lxRS2rYUi3k&index=5&ab_channel=AIwithFlutter // parts remaining
// packages: flutter_map, latlong2

// issue: markers displaces if map is zoomed in/out
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final MapController _mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_map, latlong2'),backgroundColor: Colors.green[300],),
      body: content(),

      floatingActionButton: buildFAB(),
    );
  }

  Column buildFAB() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 10),
        FloatingActionButton(
          backgroundColor: Colors.green.withOpacity(0.4),
          onPressed: () {
            _mapController.move(_mapController.camera.center, _mapController.camera.zoom + 1);
            setState(() {});
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          backgroundColor: Colors.green.withOpacity(0.4),
          onPressed: () {
            _mapController.move(_mapController.camera.center, _mapController.camera.zoom - 1);
            setState(() {});
          },
          child: const Icon(
            Icons.remove,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget content() {
    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        initialCenter: LatLng(23.8041, 90.4152), //google, dhaka: 23.8041° N, 90.4152° E
        initialZoom: 11,
        interactionOptions:
          InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom),
      ),
      children: [
        openStreetMapTileLayer,
        MarkerLayer(
          markers: [
            const Marker(
              point: LatLng(23.8048, 90.4158),
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.location_pin,
                size: 50,
                color: Colors.blue,
              ),
            ),
            Marker(
              point: const LatLng(23.8021, 90.4132),
              width: 60,
              height: 60,
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: (){
                  // task, eg navigate to another page
                  //print(""); // this LatLng ?
                },
                child: const Icon(
                  Icons.location_pin,
                  size: 50,
                  color: Colors.red,
                ),
              ),
            ),
          ],

        ),
      ],
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
);