import 'package:flutter/material.dart';
import 'package:navigation/screens/screen_three.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
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
            //     child: Text('At Screen 1')),
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Home')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Three(),
                        settings: RouteSettings(name: '/three'))),
                child: Text('At Screen 3')),
          ],
        ),
      ),
    );
  }
}
