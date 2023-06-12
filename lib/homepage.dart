import 'package:flutter/material.dart';
import 'package:uidesign/screen_1.dart';
import 'package:uidesign/screen_2.dart';
import 'package:uidesign/screen_3.dart';
import 'package:uidesign/screen_4.dart';
import 'package:uidesign/screen_5.dart';
import 'package:uidesign/screen_6.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Center(child: Text('Screens')),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen1(),
                      ));
                },
                child: Text('Screen 1')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen2(),
                      ));
                },
                child: Text('Screen 2')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen3(),
                      ));
                },
                child: Text('Screen 3')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen4(),
                      ));
                },
                child: Text('Screen 4')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen5(),
                      ));
                },
                child: Text('Screen 5')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen6(),
                      ));
                },
                child: Text('Screen 6')),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
