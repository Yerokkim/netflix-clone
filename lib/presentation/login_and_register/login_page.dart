import 'package:flutter/material.dart';

import 'package:netflix_clone/presentation/login_and_register/register_page.dart';

import 'package:netflix_clone/presentation/wigets/custom_button.dart';
import 'package:netflix_clone/presentation/wigets/custom_text_field.dart';
import 'package:netflix_clone/presentation/wigets/nav_bar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: NavBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Email',
                    onChanged: (e) {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    onChanged: (e) {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Text(
                            'Register now?',
                            style: Theme.of(context).textTheme.caption!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                    ],
                  ),
                  CustomButton(
                    buttonString: 'Sign in',
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
