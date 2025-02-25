import 'package:flutter/material.dart';

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
              colors: [Colors.white],
              stops: [0.5, 0.5],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height:
                MediaQuery.of(context).size.height *
                0.4, 
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 28, 45, 73),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  60,
                ), 
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
