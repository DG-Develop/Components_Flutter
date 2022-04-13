import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Voluptate ea cupidatat ut magna excepteur tempor irure cupidatat fugiat. Laboris elit ex quis occaecat laboris aliqua Lorem do do sint aliquip reprehenderit nisi pariatur. Mollit in eiusmod exercitation laborum sit magna laborum nisi. Labore tempor fugiat Lorem fugiat eiusmod dolore duis ea commodo eiusmod qui velit. Quis non.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Cancelar',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
