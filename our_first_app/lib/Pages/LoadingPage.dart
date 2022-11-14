import 'package:flutter/material.dart';
import 'package:our_first_app/Pages/HomePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _navigateToHomeScreen();
  // }

  Future<void> _navigateToHomeScreen() async {
    // await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const MyHomePage(title: 'Flutter Demo Home Page')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   alignment: Alignment.center,
      //   color: Colors.white,
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   child: const Text('Ну что, Диана, начнем?'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Ну что, Диана, начнем?')]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: _navigateToHomeScreen,
                tooltip: 'Начать',
                child: const Text('Да!'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
