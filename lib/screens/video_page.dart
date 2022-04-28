import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 41.0),
          SizedBox(
            height: 211.0,
            width: double.infinity,
            child: Image.asset(
              "assets/images/Rectangle 301.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 12.0),
                Text(
                  "Figmada mobil ilova dizayni",
                  style: TextStyle(
                    color: Color(0xFF0A191E),
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  """Bu darsda biz siz bilan figma dasturida web sayt
uchun dizayn qilishni sinab ko`ramiz.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
                  style: TextStyle(
                    color: Color(0xFF8F9698),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 14.0),
                Text(
                  "@abbos_khazratov",
                  style: TextStyle(
                    color: Color(0xFF8F9698),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
