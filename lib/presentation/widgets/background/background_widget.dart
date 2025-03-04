import 'package:flutter/material.dart';
import 'package:moco_app/core/theme/app_colors.dart';
import 'package:moco_app/core/utils/bezier_clipper.dart/bezier_clipper.dart';

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
              colors: [AppColors.background, AppColors.background],
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
              decoration: const BoxDecoration(color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
