import 'package:flutter/material.dart';
import 'package:netflix_design/models/content_model.dart';

import '../widgets/widgets.dart';

class FeaturedContent extends StatelessWidget {
  final Content featuredContent;

  const FeaturedContent({Key key, this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: Image.asset(
            featuredContent.titleImageUrl,
            width: 250.0,
          ),
        ),
        Positioned(
            bottom: 40.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalButton(icon: Icons.add, title: 'List', onTap: () {}),
                FlatButton.icon(
                    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      size: 30,
                    ),
                    label: Text(
                      'Play',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
                VerticalButton(
                    icon: Icons.info_outline, title: 'Info', onTap: () {})
              ],
            ))
      ],
    );
  }
}
