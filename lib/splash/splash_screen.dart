import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  Future startAnimation() async {
    Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _animate = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: _animate ? (screenHeight / 2 - screenWidth / 4) : -180,
              left: _animate ? (screenWidth / 2 - screenWidth / 4) : -180,
              child: SizedBox(
                  height: screenWidth / 2,
                  width: screenWidth / 2,
                  child: const Image(
                      image: AssetImage("assets/images/ic_movie.png")))),
          Positioned(
              top: screenHeight / 2 + screenWidth / 4,
              left: screenWidth / 2 - (screenWidth / 15),
              child: AnimatedOpacity(
                opacity: _animate ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Text(
                  "Movi",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: _animate ? (screenHeight - 100) : screenHeight + 100,
              left: screenWidth / 2 - (screenWidth / 15),
              child: const CircularProgressIndicator())
        ],
      ),
    );
  }
}
