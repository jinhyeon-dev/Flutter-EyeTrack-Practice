import 'package:flutter/material.dart';
import 'package:flutter_eye_tracking/src/provider/gaze_tracker_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class GazePointWidget extends StatelessWidget {
  static const circleSize = 20.0;

  const GazePointWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final consumer = Provider.of<GazeTrackerProvider>(context);
    return Positioned(
        left: consumer.pointX - circleSize / 2.0,
        top: consumer.pointY - circleSize / 2.0,
        child: Container(
            width: circleSize,
            height: circleSize,
            decoration: const BoxDecoration(
                color: Colors.red, shape: BoxShape.circle)));
  }
}
