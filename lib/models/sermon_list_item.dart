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
          'https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/HE%20ROOT%20OF%20AGONY%20AND%20OPPRESSION.jpg?alt=media&token=219385e9-f257-4d26-af52-7759cb91b02d',
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
