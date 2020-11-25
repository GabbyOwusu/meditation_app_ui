import 'package:flutter/material.dart';
import 'package:meditation_app_ui/screens/details.dart';

class Recommendations extends StatefulWidget {
  final int index;
  final String images;

  Recommendations({this.index, this.images});
  @override
  _RecommendationsState createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailsPage(
              images: widget.images,
            );
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        width: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.images),
            fit: BoxFit.fitWidth,
          ),
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            SizedBox(height: 10),
            Text(
              'Flow - Level 1',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Getting Started for beginners like you',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
