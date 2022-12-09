import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        child: Container(
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mainBlue),
          child: Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
          )),
        ));
  }
}
