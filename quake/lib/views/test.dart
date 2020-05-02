import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class TestPage extends StatefulWidget {
  static const id = "test";
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  
  @override
  void initState () {
    super.initState();
    vibrate();
  }

  void vibrate()async{
    print(await Vibration.hasAmplitudeControl());
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(pattern: [125,75,125,275,200,275,125,75,125,275,200,600,200,600]);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      height: double.infinity,
    );
  }
}