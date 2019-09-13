import 'dart:async';
import 'package:gazz/pages/cost_estimation.dart';
import 'package:gazz/utils/current_location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {

  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController controller;
  static Position userLocation;
  static Position userPastLocation;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: userLocation==null?LatLng(13.08784,80.27847):LatLng(userLocation.longitude, userLocation.longitude),

    zoom: 14.4746,
  );

  LatLng mPosition=LatLng(12.42796133580664, -78.085749655962);
  static final CameraPosition _kLake = CameraPosition(
//      bearing: 192.8334901395799,
      target: userLocation  == null?LatLng(12.42796133580664, -78.085749655962):
      LatLng(userLocation.latitude,userLocation.longitude),


      zoom: 14.4);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getLocation().then((position) {
      print(userLocation.longitude.toString());
      setState(() {
        userLocation = position;
        mPosition=LatLng(userLocation.latitude,userLocation.longitude);



      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        GoogleMap(
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },

        ),

       new RaisedButton(

          child: new Text('Deliver'),
          color: Colors.blueAccent,
          onPressed: ()=>{
          Navigator.of(context).push(_createRoute())
          },
        ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child:Align(
           alignment: Alignment.topRight,
         child: FloatingActionButton(
            onPressed: () {
              _getLocation().then((value) {
                setState(() {
                  userLocation = value;
                });

                _goToTheLake();


              });

            },

            child: Icon(Icons.my_location),
          ),
         ),

       ),
      ],
    );

  }

  Future<Position> _getLocation() async {
    var currentLocation;
    try {
      currentLocation = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation) => MyApp(),
    transitionsBuilder: (context,animation,secondaryAnimation,child) {
      var begin=Offset(1.0,0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin : begin , end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );

    },
  );
}
