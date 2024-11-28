import 'package:eye_exercise/screen/notice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EyeYogaScreen(),
    );
  }
}

class EyeYogaScreen extends StatefulWidget {
  @override
  _EyeYogaScreenState createState() => _EyeYogaScreenState();
}

// 1-1 첫화면 (앱 실행) => 1-2 화면으로 로딩 2초 구현
class _EyeYogaScreenState extends State<EyeYogaScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NoticeScreen()),
      );
    });
  }

  // 1-1 첫 화면 (앱 실행 화면)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Eye Yoga'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Eye Yoga',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
