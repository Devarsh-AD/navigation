import 'package:flutter/material.dart';
import 'package:navigation/screens/screen_two.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: Column(
          children: [
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Dashboard')),
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Home')),
            ElevatedButton(
               onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Two(),
                        settings: RouteSettings(name: '/two'))),
                child: Text('At Screen 2')),
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
