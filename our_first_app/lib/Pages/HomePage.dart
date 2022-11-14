import 'package:flutter/material.dart';
import 'package:our_first_app/Pages/SecondLessonPage.dart';
import 'package:our_first_app/Widgets/Widget1.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter = _counter + 3;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)),
            Text(widget.title),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (conetxt) => SecondLessonPage()));
                },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            SizedBox(
              height: 200,
            ),
            Divider(
              color: Colors.blue,
            ),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            Widget1(),
            Text("Karim"),
            Container(
              width: 200,
              height: 50,
              color: Color.fromARGB(255, 204, 73, 221),
              child: Icon(
                Icons.add_photo_alternate,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter = _counter + 3;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
