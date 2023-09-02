import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac/screen2.dart';

class splashScreen extends StatefulWidget {
  splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PlayerScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/images/animation_lm1trcjk.json'),
            SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tic ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color(0xff2B3f53),
                  ),
                ),
                Text(
                  'Tac ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Toe ',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
