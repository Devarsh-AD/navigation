import 'package:flutter/material.dart';
import 'package:navigation/screens/dashBoard.dart';
import 'package:navigation/screens/screen_three.dart';
import 'package:navigation/screens/screen_one.dart';
import 'package:navigation/screens/screen_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashBoard(),
                        settings: RouteSettings(name: '/dashboard'))),
                child: Text('At Dashboard')),
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Screen 1')),
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Screen 2')),
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Screen 3')),
          ],
        ),
      ),
    );
  }
}
