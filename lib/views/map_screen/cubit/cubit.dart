import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_order_app_v1/views/map_screen/cubit/states.dart';

import 'geo_locator_services.dart';

class MapCubit extends Cubit<MyStates> {

  MapCubit() : super(InitialState());
  static MapCubit get(context)=>BlocProvider.of(context);
  TextEditingController? search;
  CameraPosition myLocation = CameraPosition(
    target: LatLng(31.041528501707223, 31.378720528905923),
    zoom: 11.5,
  );

static Position? currentLocation;
  getCurrentLocation()async{
   emit(GetMyLocation());
  currentLocation=await GeoLocatorServices().getCurrentLocation();

}
void  updateMyLocation(){
  emit(UpdateMyLocation());

  if(currentLocation!=null){
     myLocation = CameraPosition(
       target: LatLng(currentLocation!.latitude,currentLocation!.longitude),
       zoom: 11.5,
     );

   }
}



}