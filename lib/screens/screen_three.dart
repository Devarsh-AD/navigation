import 'package:flutter/material.dart';
import 'package:navigation/main.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 3')),
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
            //     child: Text('At Screen 2')),
            ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, ModalRoute.withName('/two')),
                child: Text('At Home')),
          ],
        ),
      ),
    );
  }
}
