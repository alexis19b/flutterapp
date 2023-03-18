import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Quis id ea cupidatat incididunt anim et eu qui do non cupidatat sunt. Non in amet minim anim cillum eiusmod est culpa nulla reprehenderit nulla exercitation proident. Amet tempor minim consectetur esse id.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        )
      ]),
    );
  }
}
