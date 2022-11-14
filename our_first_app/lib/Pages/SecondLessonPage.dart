import 'package:flutter/material.dart';

class SecondLessonPage extends StatefulWidget {
  const SecondLessonPage({Key? key}) : super(key: key);

  @override
  State<SecondLessonPage> createState() => _SecondLessonPageState();
}

class _SecondLessonPageState extends State<SecondLessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Второе занятие'),
      ),
    );
  }
}
