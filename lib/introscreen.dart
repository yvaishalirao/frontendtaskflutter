import 'package:flutter/material.dart';

import 'route.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenHeight = constraints.maxHeight;
            double screenWidth = constraints.maxWidth;
            double imageSize = screenWidth * 0.9;
            double textFontSize = screenWidth * 0.07;
            double buttonFontSize = screenWidth * 0.05;
            double buttonPaddingHorizontal = screenWidth * 0.1;
            double buttonPaddingVertical = screenHeight * 0.02;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/elearn.png",
                  width: imageSize,
                  height: imageSize,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Upskill Yourself!",
                  style: TextStyle(fontSize: textFontSize * 1.5, color: Colors.black),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Enroll for Top Courses",
                  style: TextStyle(fontSize: textFontSize, color: Colors.black),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.courseHome);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: buttonPaddingHorizontal,
                      vertical: buttonPaddingVertical,
                    ),
                    child: Text(
                      "Enroll Now",
                      style: TextStyle(fontSize: buttonFontSize, color: Colors.black),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: IntroScreen()));
}
