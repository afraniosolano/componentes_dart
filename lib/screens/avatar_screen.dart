import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 3.0),
            child: CircleAvatar(
              child: const Text("SL"),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage:
              NetworkImage('https://www.cultture.com/pics/2019/04/stanlee.jpg'),
        ),
      ),
    );
  }
}
