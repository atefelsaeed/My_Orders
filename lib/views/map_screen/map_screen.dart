import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_order_app_v1/views/auth/login/login_view.dart';
import 'package:my_order_app_v1/widgets/default_button.dart';
import 'package:my_order_app_v1/widgets/navigate_to.dart';

import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class MapSample extends StatelessWidget {
  GoogleMapController? _googleMapController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapCubit()..getCurrentLocation(),
      child: BlocConsumer<MapCubit, MyStates>(
          builder: (context, state) {
            MapCubit cubit = MapCubit.get(context);

            return Scaffold(
              body: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TextField(
                    controller: cubit.search,
                    decoration: InputDecoration(
                        hoverColor: Color(0xffEF4760),
                        hintText: 'what are you looking to',
                        prefixIcon: Icon(Icons.search)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 100,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        GoogleMap(
                          onMapCreated: (controller) =>
                              _googleMapController = controller,
                          myLocationButtonEnabled: true,
                          initialCameraPosition: cubit.myLocation,
                          myLocationEnabled: true,
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
                                  cubit.updateMyLocation();
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
                                    defaultButton(
                                      radius: 10,
                                      function: () {
                                        print(cubit.myLocation.toString());
                                        navigateTo(context, LoginView());
                                      },
                                      text: LocaleKeys.choose_location.tr(),
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
          },
          listener: (context, state) {}),
    );
  }
}
