import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              image: NetworkImage(
                  'https://tecnovortex.com/wp-content/uploads/2019/04/wallpaper-engine.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'))
        ],
      ),
    );
  }
}
