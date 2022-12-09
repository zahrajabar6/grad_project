import 'package:flutter/material.dart';
import 'package:grad_project/controllers/colors.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    required this.label,
    required this.validator,
    required this.obsecure,
    this.onChanged,
    required this.height,
  }) : super(key: key);

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
        cursorColor: AppColors.mainBlue,
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 10),
          labelText: label,
          labelStyle: TextStyle(color: AppColors.lightGrey, fontSize: 16),
          floatingLabelStyle:
              TextStyle(color: AppColors.mainBlue, fontSize: 14),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.mainBlue),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 6,
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 1, color: AppColors.mainBlue),
          ),
          errorBorder: OutlineInputBorder(
            gapPadding: 6,
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
