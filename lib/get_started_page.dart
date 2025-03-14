import 'package:flutter/material.dart';
import 'dart:math';
import 'package:homework/home_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _bgGradient(),
          _cornerImage1(),
          _mainImage(),
          Positioned(
            top: 360,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'Welcome to\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.25)),
                    TextSpan(
                        text: 'Dash App',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.25))
                  ]),
                  textAlign: TextAlign.center),
            ),
          ),
          _getStartedButton(context),
          _cornerImage2()
        ],
      ),
    );
  }

  Widget _cornerImage2() {
    return Positioned(
      top: 580,
      left: 10,
      child: Transform.rotate(
          angle: -15 * pi / 180,
          child: Container(
            height: 300,
            width: 222,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Frame.png'), fit: BoxFit.fill)),
          )),
    );
  }

  Widget _mainImage() {
    return Positioned(
      top: 88,
      left: 87,
      child: Container(
        alignment: Alignment.center,
        width: 186,
        height: 274,
        child: Image.asset(
          'assets/bluebird.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _cornerImage1() {
    return Positioned(
      top: 0,
      left: 250,
      child: Transform.rotate(
        angle: 0 * pi / 180,
        child: Container(
          width: 208.52,
          height: 173.77,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Group.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return Positioned(
      top: 610,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: 214,
          height: 53,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(
                  color: Color(0xFF3C6FE2),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bgGradient() {
    return Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3A6FE2), Color(0xFF9E7BF5)]),
    ));
  }
}
