import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String details =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, \n\n etus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique etus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.";

  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C716),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border,
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descriptionPlace,
        style: TextStyle(fontSize: 16.0, color: Color(0xFF56575a)),
      ),
    );

    final text = Container(
      child: Column(
        children: <Widget>[titleStars, description],
      ),
    );

    return text;
  }
}
