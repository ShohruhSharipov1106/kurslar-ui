
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kurslar_ui/screens/data.dart';
import 'package:kurslar_ui/screens/video_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _productPageAppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return index == 0
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: contentOfCourse(
                      Data().images[0],
                      Data().titles[0],
                      Data().subtitles[0],
                      Data().secondsubtitles[0],
                      Data().datetime[0],
                      Data().videoplay[0]),
                )
              : contentOfCourse(
                  Data().images[index],
                  Data().titles[index],
                  Data().subtitles[0],
                  Data().secondsubtitles[0],
                  Data().datetime[0],
                  Data().videoplay[1],
                );
        },
        itemCount: Data().images.length,
      ),
    );
  }

  AppBar _productPageAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF323232),
          size: 24.0,
        ),
      ),
      title: const Text(
        "UX/UI darslari",
        style: TextStyle(
          fontSize: 25.0,
          color: Color(0xFF0A191E),
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        InkWell(
          child: Image.asset(
            "assets/images/help.png",
          ),
        ),
      ],
    );
  }

  Padding contentOfCourse(String images, String titles, String subtitles,
      String secondsubtitles, String datetime, Widget videoplay) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 6.0,
      ),
      child: Container(
        height: 140.0,
        width: 343.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFF1F2F6),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 140.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        images,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white70,
                    child: Center(
                      child: Text(
                        datetime,
                        style: const TextStyle(
                          color: Color(0xFF0A191E),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  height: 22.0,
                  width: 37.0,
                  bottom: 5.0,
                  right: 5.0,
                ),
              ],
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 10.0),
                    Text(
                      titles,
                      style: const TextStyle(
                        color: Color(0xFF0A191E),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      subtitles,
                      style: const TextStyle(
                        color: Color(0xFF8F9698),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        secondsubtitles,
                        style: const TextStyle(
                          color: Color(0xFF8F9698),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 42.0),
                      videoplay,
                      const SizedBox(width: 10.0),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
