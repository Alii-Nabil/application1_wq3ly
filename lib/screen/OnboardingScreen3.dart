import 'package:application_wq3ly/data/datasource/static/static.dart';
import 'package:application_wq3ly/screen/login_screen.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Text(
                "WQ3LY",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image/12325314_4960572 1.png",
                height: 270,
                width: 303,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      onBoardingList.length,
                      (index) => AnimatedContainer(
                            duration: Duration(milliseconds: 900),
                            margin: EdgeInsets.only(right: 5),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                          )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                width: 400,
                color: Color(0xFFE4F3DD),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome to WQ3LY",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                "Lorem ipsum dolor sit amet consectetur. Enim nunc\nsit quam tellus egestas et amet. Urna augue\norci augue orci montes egestas leo tempus\nmaecenas.",
                style: TextStyle(
                    height: 1.5,
                    color: Color(0xFFA3A3A3),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 16, bottom: 8, left: 16),
                child: TextButon(
                  buttonText: "Sign up",
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  backgroundColor: Color(0xffA2E771),
                  buttonHeight: 50,
                  buttonWidth: 345,
                  borderRadius: 6,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 16, bottom: 8, left: 16),
                child: TextButon(
                  buttonText: "Sign in",
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  backgroundColor: Color(0xffFFFFFF),
                  buttonHeight: 50,
                  buttonWidth: 345,
                  borderRadius: 6,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
