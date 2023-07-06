import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:role_dice_app/components/gradient_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          backgroundColor: Colors.white,
          title: const Text(
            'Roll Dice App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          //color: Colors.black
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black12, Colors.white],
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/dice-$randomNumber.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      getRandomNumber();
                    },
                    child: const Text(
                      'roll dice',
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ))
              ],
            ),
          ),
        ));
  }

  int randomNumber = 1;
  void getRandomNumber() {
    // Generate a random number between 0 and 5

    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
    // Add 1 to the random number to get a number from 1 to 6
    print(randomNumber);
  }
}
