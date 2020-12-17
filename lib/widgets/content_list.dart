import 'package:flutter/material.dart';

import '../models/models.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  final bool isOriginals;

  const ContentList(
      {Key key, this.title, this.contentList, this.isOriginals = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          height: 500,
          child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final Content content = contentList[index];
              return GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 400.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.purple,
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
                  ],
                ),
              );
            },
            itemCount: contentList.length,
          ),
        )
      ]),
    );
  }
}
