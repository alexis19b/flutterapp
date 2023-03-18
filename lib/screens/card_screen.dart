import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cars Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: const [CustomCardType1(), CustomCardType2()],
        ));
  }
}
