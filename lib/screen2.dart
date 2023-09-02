import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac/game.dart';

class PlayerScreen extends StatefulWidget {
  PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final playerx_controller = TextEditingController();

  final playery_controller = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  bool valid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Lottie.asset('assets/images/animation_lm1trcjk.json'),
                  height: 200,
                  width: 300,
                ),
                const SizedBox(
                  height: 10,
                ),
                //0xff2B3f53,
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
                  controller: playerx_controller,
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.grey.withOpacity(0.3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: "PLayer x",
                    labelText: "Enter Player1 Name",
                    errorText: valid ? 'Value Can\'t Be Empty' : null,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
                  controller: playery_controller,
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Colors.grey.withOpacity(0.3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: "PLayer o",
                    labelText: "Enter Player2 Name",
                    errorText: valid ? 'Value Can\'t Be Empty' : null,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Game();
                          },
                        ));
                      }
                    },
                    child: Text('stared Game'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
