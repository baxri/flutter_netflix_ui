import 'package:flutter/material.dart';

class VerticalButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final IconData icon;

  const VerticalButton({Key key, this.onTap, this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
