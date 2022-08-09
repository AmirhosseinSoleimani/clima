import 'package:flutter/material.dart';
import './location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  @override
  void initState() {
    super.initState();
    getLocation();
  }

    void getLocation() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen(
      locationWeather: weatherData,
    )));
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}