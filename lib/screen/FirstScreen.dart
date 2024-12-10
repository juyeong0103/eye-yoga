import 'package:eye_exercise/screen/SecondScreen.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  void onStartPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SecondScreen(totalTime: 20),
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eye Yoga')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 125),
          const Center(
            child: Text(
              '본 운동 시작 전 준비운동이 시작됩니다.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 250),
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
                  Navigator.pop(context);
                },
                // 이전 버튼
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
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen(totalTime: 20),
                            ),
                      );
                    },
                // 다음 버튼
                child: const Row(
                   mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('준비 시작'),
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
      ),
    );
  }
}