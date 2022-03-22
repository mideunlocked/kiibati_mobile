import 'package:flutter/material.dart';

class LatestSermon extends StatelessWidget {
  const LatestSermon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcBTuvBkwKGczDs4q-KaEAZSm3nou7PQ9dqg&usqp=CAU',
        fit: BoxFit.fill,
      ),
    );
  }
}
