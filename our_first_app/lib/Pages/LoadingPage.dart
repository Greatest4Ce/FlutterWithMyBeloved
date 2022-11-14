import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:our_first_app/Pages/HomePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Ну что, Диана, продолжим?')]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OpenContainer(
                closedElevation: 0,
                middleColor: Colors.lightBlue,
                openElevation: 0,
                transitionDuration: Duration(milliseconds: 1000),
                closedBuilder: (context, action) => Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadiusDirectional.circular(20)),
                  child: Text(
                    'Да!!!!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                openBuilder: (context, action) =>
                    MyHomePage(title: 'Наше первое занятие'),
              )
            ],
          )
        ],
      ),
    );
  }
}
