import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final String images;

  const SessionCard({Key key, this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.only(left: 20),
          width: 150,
          margin: EdgeInsets.only(top: 25, left: 20),
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.fitHeight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Make time for Yoga'),
        )
      ],
    );
  }
}
