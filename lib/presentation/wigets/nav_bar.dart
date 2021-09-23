import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Container(
        child: Row(
          children: [
            Image.asset(
              "assets/images/netflix-logo.png",
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
