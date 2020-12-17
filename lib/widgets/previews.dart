import 'package:flutter/material.dart';

import '../models/models.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Previews({Key key, this.title, this.contentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final Content content = contentList[index];

              return GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      height: 130.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                          border: Border.all(color: content.color, width: 4.0),
                          image: DecorationImage(
                              image: AssetImage(content.imageUrl),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black87, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Image.asset(
                          content.titleImageUrl,
                          height: 60,
                        ))
                  ],
                ),
              );
            },
            itemCount: contentList.length,
          ),
        )
      ],
    );
  }
}
