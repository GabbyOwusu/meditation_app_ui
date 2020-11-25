import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app_ui/widgets/chapters.dart';

class DetailsPage extends StatelessWidget {
  final String images;

  DetailsPage({this.images});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 17,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Lesson 1',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              CupertinoIcons.share,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images),
                  fit: BoxFit.fitWidth,
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 35),
              child: Text(
                '4 weeks - Beginner',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 35),
              child: Text(
                'Yoga for Beginners',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 35),
              child: Text(
                'Now to Yoga? Start here with beginner yoga sequences, tutorials on fundamental yoga poses ,and answers to your questions on all your yoga basics. Build strength and confidence to take yor confidence to the next level ',
                style: TextStyle(
                  height: 1.65,
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                'All chapters',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Collections(
                  index: index,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
