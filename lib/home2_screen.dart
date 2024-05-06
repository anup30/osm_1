// https://www.youtube.com/watch?v=ZnZM8ot5lcc&list=PLJh8Hi_cW8DYP0LkOMzGA_lxRS2rYUi3k&index=5&ab_channel=AIwithFlutter // parts remaining
// packages: flutter_map, latlong2
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});

  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_map, latlong2'),backgroundColor: Colors.green,),
      body: content(),
    );
  }

  Widget content() {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(23.8041, 90.4152), //google, dhaka: 23.8041° N, 90.4152° E
        initialZoom: 11,
        interactionOptions:
          InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom),
      ),
      children: [
        openStreetMapTileLater,
      ],
    );
  }
}

TileLayer get openStreetMapTileLater => TileLayer(
  urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
);