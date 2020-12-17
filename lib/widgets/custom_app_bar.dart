import 'package:flutter/material.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(
              Assets.netflixLogo0,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () {},
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () {},
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () {},
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final Function onTap;
  final String title;

  const _AppBarButton({Key key, this.onTap, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
