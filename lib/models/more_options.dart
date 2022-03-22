import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  final Icon icon;
  final String optionName;

  const MoreOptions({
    Key? key,
    required this.icon,
    required this.optionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('EmptyScreen');
              },
              icon: const Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Text(optionName),
      ],
    );
  }
}
