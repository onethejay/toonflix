import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp > Google
    // CupertinoApp > Apple
    // Material 스타일이 좀 더 작업하기 좋다.
    // 물론 수정이 가능하므로 크게 신경쓰지 않아도 된다.
    return MaterialApp(
      home: Scaffold(
        //항상 scaffold를 가지고 있어야 한다.
        appBar: AppBar(
          title: Text("Hello flutter!"),
        ),
        body: Center(
          child: Text("Hello world!"),
        ),
      ),
    );
  }
}
