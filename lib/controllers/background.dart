//set the background image of the app

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:  AssetImage("assets/images/background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}