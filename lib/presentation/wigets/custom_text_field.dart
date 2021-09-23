import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final ValueChanged onChanged;
  // final FormFieldValidator<String> validator;

  const CustomTextField({
    required this.onChanged,
    required this.labelText,
    // required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.white,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color(0xFFD7D7D7),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 2.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
