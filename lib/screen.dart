import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import './location.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    double lon = position.longitude;
    print(lon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            getLocation();
          },
          child: Text('GetYourLocation'),
        ),
      ),
    );
  }
}
