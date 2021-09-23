import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonString;
  final VoidCallback? onPressed;

  const CustomButton({
    required this.onPressed,
    required this.buttonString,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(50, 50),
          primary: Colors.red,
        ),
        onPressed: onPressed,
        child: Text(buttonString),
      ),
    );
  }
}
