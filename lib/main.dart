// Open Street Map
// package: flutter_osm_plugin
// https://www.youtube.com/watch?v=JIkYw4veSUE&t=4s&ab_channel=AhmedNabil
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:osm_1/home2_screen.dart';
import 'package:osm_1/home3_screen.dart';
import 'package:osm_1/home_screen.dart'; // version 0.70.4,
// flutter_osm_plugin 1.0.3: error:  The named parameter 'markerOption' isn't defined.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
      Home2Screen(), // MapScreen() , HomeScreen() , Home2Screen() ----------------------------------------------------------------------
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController(
    //initMapWithUserPosition: true,
    //LatLng(23.744287065983727, 90.3841376276092)
    //initPosition: GeoPoint(latitude: 23.7442, longitude: 90.3841),

    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Open Street Map')),
      body: OSMFlutter(
        controller: _mapController,
        //mapIsLoading: const Center(child: CircularProgressIndicator(),),

        osmOption: OSMOption(
          userTrackingOption: const UserTrackingOption(
            enableTracking: true,
            unFollowUser: false,
          ),
          zoomOption: const ZoomOption(
            initZoom: 8,
            minZoomLevel: 3,
            maxZoomLevel: 19,
            stepZoom: 1.0,
          ),
          userLocationMarker: UserLocationMaker(
            personMarker: const MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: const MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
                color: Colors.red,
              ),
            ),
          ),
          roadConfiguration: const RoadOption(
            roadColor: Colors.yellowAccent,
          ),
          markerOption: MarkerOption(
            defaultMarker: const MarkerIcon(
              icon: Icon(
                Icons.person_pin_circle,
                color: Colors.blue,
                size: 56,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
