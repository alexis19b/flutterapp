import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jesús Briceño'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: const Text('JL'),
              backgroundColor: Colors.green[800],
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('AvatarScreen'),
      ),
    );
  }
}
