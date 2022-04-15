import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              name: 'Linux System',
              imageUrl:
                  'https://images.pling.com/img/00/00/46/19/39/1193720/5fa66423c18fcdf85af6c318d82bae08ad22.png'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl: 'https://wallpaperaccess.com/full/2278986.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: 'Mac System',
            imageUrl:
                'https://i.pinimg.com/originals/d4/75/a2/d475a2a5389727dd21f6cc54ce958fdc.jpg',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
