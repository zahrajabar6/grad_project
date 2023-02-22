// import 'package:flutter/material.dart';
// import 'package:grad_project/constant.dart';

// class MyButton extends StatelessWidget {
//   const MyButton({super.key, required this.text, required this.onPress});

//   final String text;
//   final VoidCallback onPress;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//         style: ButtonStyle(
//           overlayColor:
//               MaterialStateColor.resolveWith((states) => Colors.transparent),
//         ),
//         onPressed: onPress,
//         child: Container(
//           height: 50,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: mainBlue,
//           ),
//           child: Center(
//             child: Text(
//               text,
//               textAlign: TextAlign.center,
//               style: buttonTextStyle,
//             ),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPress,
  });
  final void Function()? onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 1.0,
        color: mainBlue,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: double.maxFinite,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
