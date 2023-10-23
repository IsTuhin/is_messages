import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:is_messenger/screen/login_screen.dart';

import '../main.dart';

//splash screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      //exit home screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(statusBarColor: Colors.transparent));

      //navigate login screen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Welcome to IsMessenger"),
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      // ),
      body: Stack(children: [
        Positioned(
            top: mq.height * .15,
            left: mq.width * .25,
            width: mq.width * .40,
            child: Image.asset("assets/images/icon.png")),
        Positioned(
            bottom: mq.height * .15,
            width: mq.width,
            child: Text(
              "Islamic State",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21, color: Colors.green.shade300),
            )),
      ]),
    );
  }
}
