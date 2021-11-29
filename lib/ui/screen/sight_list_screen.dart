import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: RichText(
          textAlign: TextAlign.left,
          maxLines: 2,
          text: const TextSpan(
            style: TextStyle(
              color: Color(0xff252849),
              fontFamily: 'Roboto',
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'С',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(text: 'писок\n'),
              TextSpan(
                text: 'и',
                style: TextStyle(color: Colors.yellow),
              ),
              TextSpan(text: 'нтересных мест'),
            ],
          ),
        ),
      ),
      body: Container(),
      backgroundColor: Colors.white,
    );
  }
}
