import 'dart:async';
import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

import 'components/map_footer.dart';
import 'components/map_search_header.dart';
import 'geo_locator_services.dart';

class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  @override
  var marker = HashSet<Marker>();

  static final CameraPosition _initialLocation = CameraPosition(
    target: LatLng(31.041528501707223, 31.378720528905923),
    zoom: 11.5,
  );

  LatLng currentLocation = _initialLocation.target;

  GoogleMapController? googleMapController;

  Completer<GoogleMapController> _controller = Completer();

  late LocationData myLocation;

  Future<void> _getMyLocation() async {
    myLocation = await LocationServices().getLocation();
    _animateCamera(location: myLocation);
  }

  Future<void> _animateCamera({required LocationData location}) async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition _cameraPosition = CameraPosition(
        target: LatLng(location.latitude!, location.longitude!), zoom: 14.47);
    controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
    marker.add(Marker(
        markerId: MarkerId('1'),
        position: LatLng(myLocation.latitude!, myLocation.longitude!)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          //===============mapSearchHeader====================
          mapSearchHeader(),
          Container(
            height: MediaQuery.of(context).size.height - 100,
            width: double.infinity,
            child: Stack(
              children: [
                GoogleMap(
                  markers: marker,
                  onMapCreated: (controller) =>
                      _controller.complete(controller),
                  initialCameraPosition: _initialLocation,
                  onCameraMove: (CameraPosition newPosition) {
                    setState(() {
                      currentLocation = newPosition.target;
                    });
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FloatingActionButton(
                        heroTag: 'world',
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        mini: true,
                        child: Image.asset('assets/images/world.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            _getMyLocation();
                          });
                        },
                        heroTag: 'location',
                        mini: true,
                        child: Icon(
                          Icons.my_location,
                          color: Color(0xffEF4760),
                        ),
                      ),
                    ),
                    //===================mapFooter==================
                    mapFooter(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
