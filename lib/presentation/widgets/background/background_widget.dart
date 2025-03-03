import 'package:flutter/material.dart';
import 'package:moco_app/presentation/widgets/bezier_clipper.dart/bezier_clipper.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 16, 83, 170),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: BezierClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 28, 45, 73),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
