import 'package:flutter/material.dart';
import 'package:flutter_eye_tracking/src/provider/gaze_tracker_provider.dart';
import 'package:provider/provider.dart';

class CameraHandleWidget extends StatelessWidget {
  const CameraHandleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'We must have cmaera permission!',
          style: TextStyle(
              color: Colors.white24,
              fontSize: 10,
              decoration: TextDecoration.none),
        ),
        Container(
          width: double.maxFinite,
          color: Colors.white12,
          child: TextButton(
              onPressed: () {
                Provider.of<GazeTrackerProvider>(context, listen: true)
                    .handleCamera();
              },
              child: const Text(
                'Click here to request cmaera authorization',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    );
  }
}
