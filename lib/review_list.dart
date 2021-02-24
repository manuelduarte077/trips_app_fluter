import 'package:flutter/material.dart';
import 'review.dart';


class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review ("assets/img/people.jpg", "Manuel Duare", "5 review ", 5, "Center is a layout widget. It takes a \n single child and positions it"),
        Review ("assets/img/people.jpg", "Manuel Duare", "3 review ", 3, "Center is a layout widget. It takes a \n single child and positions it"),
        Review ("assets/img/people.jpg", "Manuel Duare", "4 review ", 4, "Center is a layout widget. It takes a \n single child and positions it"),
        Review ("assets/img/people.jpg", "Manuel Duare", "50 review ", 5, "Center is a layout widget. It takes a \n single child and positions it"),
        Review ("assets/img/people.jpg", "Manuel Duare", "100 review ", 3.5, "Center is a layout widget. It takes a \n single child and positions it"),
      ],
    );
  }
}
