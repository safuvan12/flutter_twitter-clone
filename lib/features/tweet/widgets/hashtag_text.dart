// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/palette.dart';

class HashtagText extends StatelessWidget {
  final String text;
  const HashtagText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textspan = [];
    text.split(' ').forEach((element) {
      if (element.startsWith('#')) {
        textspan.add(
          TextSpan(
            text: '$element ',
            style: TextStyle(
              color: Pallete.blueColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (element.startsWith('www.') || element.startsWith('https://')) {
        textspan.add(
          TextSpan(
            text: '$element ',
            style: TextStyle(
              color: Pallete.blueColor,
              fontSize: 18,
            ),
          ),
        );
      } else {
        textspan.add(
          TextSpan(
            text: '$element ',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        );
      }
    });
    return RichText(
      text: TextSpan(
        children: textspan,
      ),
    );
  }
}
