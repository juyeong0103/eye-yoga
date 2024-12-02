import 'dart:async';
import 'package:eye_exercise/screen/SecondScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  int totalTime = 20;
  late Timer timer;
  bool isRunning = false;

  void onTick(Timer timer) {
    if (totalTime == 0) {
      setState(() {
        totalTime += 1;
        isRunning = false;
      });
      timer.cancel();
    } else {
      setState(() {
        totalTime -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 450),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(
                    context
                  );
                },
                // 다음 버튼
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      ),
                    Text('이전'),
                  ],
                ),
              ),
              const SizedBox(width: 200),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen()),
                  );
                },
                // 다음 버튼
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('다음'),
                    Icon(
                      Icons.arrow_forward,
                      size: 30,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }

}