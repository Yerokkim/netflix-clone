import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/custom_search/custom_search.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          },
          icon: Icon(Icons.search),
        ),
      ],
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
