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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? MyLargeTitle() : Text("Nothing"),
              IconButton(onPressed: toggleTitle, icon: Icon(Icons.remove_red_eye_rounded))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    //항상 build 메서드보다 먼저 호출되어야 한다.
    //항상 1회만 호출된다.
    super.initState();
    //항상 super.initState()를 작성하고 이후에 코드를 추가해야한다.
    print("initState!");
  }

  @override
  void dispose() {
    //위젯이 스크린에서 제거될 때 호출되는 메서드
    //API 업데이트나 이벤트 리스너로부터 구독을 취소하거나
    //form의 리스너로부터 해제할 때 사용한다.
    super.dispose();
    print("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    print("build!");
    //context를 통해 앱의 위젯 트리에 접근할 수 있다.
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
