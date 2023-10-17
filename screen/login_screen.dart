import 'package:flutter/material.dart';

import '../main.dart';
import 'home_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isAnimate = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 02),(){
      setState(() {
        _isAnimate =true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
      title: Text("Welcome to IsMessenger"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),


      body: Stack(

        children: [

          AnimatedPositioned(

              top: mq.height * .15,
              left: _isAnimate ? mq.width * .25: -mq.width *5,
              width: mq.width * .40,
              duration:Duration(seconds: 1) ,
              child: Image.asset("assets/images/icon.png")),



          Positioned(
              bottom: mq.height * .15,
              left: mq.width * .02,
              width: mq.width * .9,
              height: mq.height * .05,

              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade100,
                  shape: StadiumBorder(),
                  elevation: 1
                ),
                  onPressed: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_)=> HomeScreen()));
                  },

                    // google logo for signing with google
                  icon: Image.asset("assets/images/google.png" ,height: mq.height * .04,),
                  label: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black,fontSize: 16),
                          children:[
                            TextSpan(text: "Login with "),
                            TextSpan(text: "Google" , style: TextStyle(fontWeight: FontWeight.w500))
                        ])
                    ))),

            ],
      ),

    );
  }
}
