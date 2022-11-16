import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';

class SecondLessonPage extends StatefulWidget {
  const SecondLessonPage({Key? key}) : super(key: key);

  @override
  State<SecondLessonPage> createState() => _SecondLessonPageState();
}

class _SecondLessonPageState extends State<SecondLessonPage> {
  late double WIDTH;
  late double HEIGHT;
  late Color COLOR;

  @override
  void initState() {
    WIDTH = 200;
    HEIGHT = 50;
    COLOR = Colors.pink;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Второе занятие'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: WIDTH,
              height: HEIGHT,
              color: COLOR,
            ),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  setState(() {
                    if (WIDTH == 200 && HEIGHT == 50 && COLOR == Colors.pink) {
                      WIDTH = 50;
                      HEIGHT = 200;
                      COLOR = Colors.yellow;
                    } else {
                      WIDTH = 200;
                      HEIGHT = 50;
                      COLOR = Colors.pink;
                    }
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 255, 115),
                    foregroundColor: Colors.black),
                child: Text("Изменить"))
          ],
        ),
      ),
    );
  }
}
