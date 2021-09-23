import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/application/auth/register/user_register_provider.dart';
import 'package:netflix_clone/presentation/login_and_register/login_page.dart';
import 'package:netflix_clone/presentation/providers/auth_providers/auth_providers.dart';

import 'package:netflix_clone/presentation/wigets/custom_button.dart';
import 'package:netflix_clone/presentation/wigets/custom_text_field.dart';
import 'package:netflix_clone/presentation/wigets/nav_bar.dart';

class RegisterPage extends ConsumerWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final GlobalKey<FormState> _formKeyForResetEmail = GlobalKey();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _registerProvider = watch(registerProvider.notifier);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: NavBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Email',
                    onChanged: (e) {
                      context.read(emailProvider).state = e;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    onChanged: (e) {
                      context.read(passwordProvider).state = e;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextField(
                    labelText: 'Nick name',
                    onChanged: (e) {
                      context.read(nickNameProvider).state = e;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomButton(
                    buttonString: 'Sign up',
                    onPressed: () async {
                      final isValid = _formKey.currentState!.validate();

                      if (!isValid) return;

                      final registerState = await _registerProvider.register();

                      registerState.when(
                          data: (e) => Navigator.pop(context),
                          loading: () {},
                          error: (e, _) => Text('errr'));
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
