import 'package:flutter/material.dart';
import 'package:navigation/screens/screen_one.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          children: [
            // ElevatedButton(
            //     onPressed: () => Navigator.popUntil(
            //         context, ModalRoute.withName('/dashboard')),
            //     child: Text('At Home')),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => One(),
                        settings: RouteSettings(name: '/one'))),
                child: Text('At Screen 1')),
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
