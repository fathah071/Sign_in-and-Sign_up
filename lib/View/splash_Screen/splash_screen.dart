import 'package:flutter/material.dart';
import 'package:sign_in_and_sign_up/View/sign_in/sign_in_screen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToFirstPage();
  }

  _navigateToFirstPage() async {
    await Future.delayed(Duration(seconds:3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Sign_in_Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255, 17, 0, 1),
      body: Center(
       child:CircleAvatar(
         backgroundColor:Colors.white,
         radius: 100,
         child: Image(image: AssetImage("assets/eayezy.png")),
       ) ,

        ),
      );



    
  }

}