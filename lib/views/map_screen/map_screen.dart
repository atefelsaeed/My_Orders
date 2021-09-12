import 'dart:async';
import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:my_order_app_v1/const/style.dart';
import 'package:my_order_app_v1/views/home/home_view.dart';

import 'geo_locator_services.dart';


class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  @override


  var marker = HashSet<Marker>();
  TextEditingController? search;
  static final CameraPosition _initialLocation = CameraPosition(
    target: LatLng(31.041528501707223, 31.378720528905923),
    zoom: 11.5,
  );


  LatLng currentLocation = _initialLocation.target;


  GoogleMapController? googleMapController;


  Completer<GoogleMapController>_controller = Completer();

  late LocationData myLocation;


  Future<void> _getMyLocation() async {
    myLocation = await LocationServices().getLocation();
    _animateCamera(location: myLocation);
  }


  Future<void> _animateCamera({ required LocationData location}) async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition _cameraPosition = CameraPosition(
        target: LatLng(location.latitude!, location.longitude!), zoom: 14.47);
    controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
   marker.add(Marker(markerId: MarkerId('1'),position:LatLng(myLocation.latitude!,myLocation.longitude!)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          TextField(
            controller: search,
            decoration: InputDecoration(
                hoverColor: defaultColor,
                hintText: 'what are you looking to',
                prefixIcon: Icon(Icons.search)),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 100,
            width: double.infinity,
            child: Stack(
              children: [
                GoogleMap(
                  markers: marker,
                  onMapCreated: (controller) =>
                      _controller.complete(controller),
//                  myLocationButtonEnabled: true,
                  initialCameraPosition: _initialLocation,
//                  myLocationEnabled: true,
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
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10),
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
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose location',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Mansoura city',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            MaterialButton(
                              onPressed: () {
                                print(_initialLocation.toString());
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (_) => HomeView()));
                              },
                              color: defaultColor,
                              minWidth: double.infinity,
                              height: 45,
                              child: Text(
                                'choose location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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