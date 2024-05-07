// package: flutter_osm_plugin
// https://www.youtube.com/watch?v=JIkYw4veSUE&t=4s&ab_channel=AhmedNabil

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart'; // ---> version 0.70.4,
// flutter_osm_plugin 1.0.3: error:  The named parameter 'markerOption' isn't defined.

class Screen1a extends StatefulWidget {
  const Screen1a({super.key});

  @override
  State<Screen1a> createState() => _Screen1aState();
}

class _Screen1aState extends State<Screen1a> {
  final MapController _mapController = MapController(
    //initMapWithUserPosition: true,
    initPosition: GeoPoint(latitude: 23.8041, longitude: 90.4152), // not being starting position
    //google, dhaka: 23.8041° N, 90.4152° E
    //initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324), // --------> ?
    // areaLimit: BoundingBox(
    //   east: 10.4922941,
    //   north: 47.8084648,
    //   south: 45.817995,
    //   west: 5.9559113,
    // ),
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






// https://www.youtube.com/watch?v=u19PlnC0x2I&t=815s&ab_channel=EDMTDev - deprecated in newer versions
//import 'package:flutter/material.dart';
//import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class Screen1b extends StatefulWidget {
  const Screen1b({super.key});

  @override
  State<Screen1b> createState() => _Screen1bState();
}

class _Screen1bState extends State<Screen1b> {
  final MapController _mapController = MapController(

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_osm_plugin'),backgroundColor: Colors.blue,),
      body: OSMFlutter(
        controller: _mapController,
        //mapIsLoading: const Center(child: CircularProgressIndicator(),),
        //onMapIsReady: ,
        //trackMyPosition: true,
        osmOption: OSMOption(),

      ),
    );
  }
}