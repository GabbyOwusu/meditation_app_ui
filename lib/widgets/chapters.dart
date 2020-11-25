import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  final int index;

  Collections({this.index});

  final images = [
    'images/pic2.jpg',
    'images/pic3.jpg',
    'images/pic1.jpg',
    'images/pic1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.fill,
              ),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tadasana',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '5mins - Must try',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(CupertinoIcons.ellipsis),
        ],
      ),
    );
  }
}
