import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(
              'https://images.pling.com/img/00/00/46/19/39/1193720/5fa66423c18fcdf85af6c318d82bae08ad22.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        )
      ]),
    );
  }
}
