import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  static int buildCnt = 0;

  @override
  Widget build(BuildContext context) {
    print(++buildCnt);

    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  // ⚠️ Так не получится написать, т.к. context не является свойством объекта StatelessWidget
  // Type contextRuntimeType() {
  //   return context.runtimeType;
  // }
}

class MySecondWidget extends StatefulWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  State<MySecondWidget> createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  static int buildCnt = 0;

  @override
  Widget build(BuildContext context) {
    print(++buildCnt);

    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  // ✅ Получилось использовать context.
  // Он является свойством объекта _MySecondWidgetState
  Type contextRuntimeType() {
    return context.runtimeType;
  }
}
