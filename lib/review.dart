import 'package:flutter/material.dart';

import 'rating.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = 'Manuel Duarte';
  String details = '1 review 5 photos';
  double stars = 5;
  String comment = 'There is an amazing place in Granada';

  Review(this.pathImage, this.name, this.details, this.stars, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
          )),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(details,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
              )),
        ),
        Rating(stars, 5.0, 14.0)
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 17.0,
          )),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
