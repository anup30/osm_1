// https://www.youtube.com/watch?v=u19PlnC0x2I&t=815s&ab_channel=EDMTDev - deprecated?
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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