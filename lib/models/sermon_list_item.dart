import 'package:flutter/material.dart';

class SermonListItem extends StatelessWidget {
  const SermonListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(5),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F4.png?alt=media&token=8ca23cc0-c59a-4086-9ce1-fde9127a3e47",
          fit: BoxFit.contain,
        ),
      ),
      title: const Text(
        'The root of agony',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SizedBox(
            height: 5,
          ),
          Text(
            'Proverb 1 vs 7',
          ),
          SizedBox(
            height: 5,
          ),
          Text('30th September, 2021'),
          Divider(),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed('SermonVideo');
      },
    );
  }
}
