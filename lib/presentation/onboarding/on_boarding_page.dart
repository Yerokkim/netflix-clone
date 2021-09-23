import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/login_and_register/login_page.dart';
import 'package:onboarding/onboarding.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onboardingPagesList = [
      PageModel(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 45.0),
                child: Image.asset(
                  'assets/images/onboarding1.png',
                )),
            Container(
                width: double.infinity,
                child: Text('Can I use your Netflix?', style: pageTitleStyle)),
            Container(
              width: double.infinity,
              child: Text(
                'Sorry, It is not my account.',
                style: pageInfoStyle,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
      PageModel(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 45.0),
                child: Image.asset(
                  'assets/images/onboarding2.png',
                )),
            Container(
                width: double.infinity,
                child: Text('Try one month for free!', style: pageTitleStyle)),
            Container(
              width: double.infinity,
              child: Text(
                'Enjoy more than 1000 movies and series!',
                style: pageInfoStyle,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
    ];

    return Onboarding(
      background: Colors.black,
      proceedButtonStyle: ProceedButtonStyle(
        proceedButtonRoute: (context) {
          return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Container(),
            ),
            (route) => false,
          );
        },
      ),
      // isSkippable = true,
      pages: onboardingPagesList,
      indicator: Indicator(
        indicatorDesign: IndicatorDesign.line(
          lineDesign: LineDesign(
            lineType: DesignType.line_uniform,
          ),
        ),
      ),
    );
  }
}
