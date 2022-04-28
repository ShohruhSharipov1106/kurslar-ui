import 'package:flutter/material.dart';

class Data {
  List<String> titles = [
    "UX/UI nima? Soha haqida\numumiy tushuncha.",
    "Sayt yasashga\nmo'ljallangan dasturlar",
    "UX/UI va Web dizaynerlar\no'qishi kerak bo'lgan kitoblar",
    "Figmada sayt dizayni",
    "Landing page",
  ];

  List<String> subtitles = [
    "Abbos Xazratov",
  ];

  List<String> secondsubtitles = [
    "2 kun oldin yuklandi",
  ];

  List<String> datetime = [
    "12:27",
  ];

  List<String> images = [
    "assets/images/Rectangle 313.png",
    "assets/images/Rectangle 313 (1).png",
    "assets/images/Rectangle 313 (2).png",
    "assets/images/Rectangle 313 (3).png",
    "assets/images/Rectangle 313 (4).png",
  ];

  List<Widget> videoplay = [
    const CircleAvatar(
      child: Icon(
        Icons.play_arrow,
        color: Color(0xFFF1F2F6),
        size: 16.5,
      ),
      backgroundColor: Color(0xFF31B9CC),
      radius: 12.0,
    ),
    const CircleAvatar(
      backgroundColor: Color(0xFFADE3EB),
      child: Icon(
        Icons.download,
        color: Color(0xFFF1F2F6),
        size: 16.5,
      ),
      radius: 12.0,
    )
  ];
}
