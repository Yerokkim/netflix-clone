import 'package:flutter/material.dart';

class ActionButtonList extends StatelessWidget {
  final VoidCallback? firstActionButtonPressed;
  final VoidCallback? secondActionButtonPressed;
  final VoidCallback? thirdActionButtonPressed;

  const ActionButtonList(
      {Key? key,
      this.firstActionButtonPressed,
      this.secondActionButtonPressed,
      this.thirdActionButtonPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Icon(Icons.add),
            SizedBox(
              height: 5,
            ),
            Text('My List'),
          ],
        ),
        ElevatedButton.icon(
            onPressed: () {/* do something here */},
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            label: Text(
              'Play',
              style: TextStyle(color: Colors.black),
            )),
        Column(
          children: [
            Icon(Icons.info),
            SizedBox(
              height: 5,
            ),
            Text('Info'),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
