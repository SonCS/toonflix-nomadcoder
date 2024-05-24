import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    // setState는 데이터가 변경됨을 알려주는 메서드
    // 굳이 {} 안에 코드를 추가할 필요는 없다.
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
