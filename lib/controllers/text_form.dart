import 'package:flutter/material.dart';
import 'package:grad_project/constant.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.label,
    required this.validator,
    required this.obsecure,
    this.onChanged,
    required this.height,
  });

  final String label;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final Function(String)? onChanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.07,
      child: TextFormField(
        onFieldSubmitted: (x) {
          FocusScope.of(context).unfocus();
        },
        onChanged: onChanged,
        obscureText: obsecure,
        textInputAction: TextInputAction.next,
        enableSuggestions: false,
        autocorrect: false,
        cursorColor: mainBlue,
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 10),
          labelText: label,
          labelStyle: const TextStyle(color: lightGrey, fontSize: 16),
          floatingLabelStyle: const TextStyle(color: mainBlue, fontSize: 14),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: mainBlue),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 6,
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: mainBlue),
          ),
          errorBorder: OutlineInputBorder(
            gapPadding: 8,
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            gapPadding: 6,
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: Colors.red),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
