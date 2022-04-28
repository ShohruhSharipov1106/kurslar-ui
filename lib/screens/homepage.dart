import 'package:flutter/material.dart';
import 'package:kurslar_ui/screens/product_page.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  var _searchController = TextEditingController();
  int listOfCoursesindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 44.0),
              _homePageAppBar(),
              const SizedBox(height: 5.0),
              _appBarSubtitles(),
              _searchMethod(),
              _listOfCourses(),
              _centerOfTitle(),
              _bodyOfCourses(context),
            ],
          ),
        ),
      ),
    );
  }

  Text _centerOfTitle() {
    return const Text(
      "Dizaynga oid kurslar",
      style: TextStyle(
        color: Color(0xFF0A191E),
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      ),
    );
  }

  Column _bodyOfCourses(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14.0),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(),
              ),
            );
          },
          child: Container(
            height: 211,
            width: 343,
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 6.0,
              top: 7.0,
              bottom: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xFFF1F2F6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 132,
                      width: 329,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/Rectangle 302.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 35.0,
                        width: 82.0,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            "12 ta darslik",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF0A191E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      bottom: 18.0,
                      left: 16.0,
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "UX/UI dizayn",
                  style: TextStyle(
                    color: Color(0xFF0A191E),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text(
                  "Boshlang'ich darajadagilar uchun",
                  style: TextStyle(
                    color: Color(0xFF8F9698),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: const [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Color(0xFF31B9CC),
                      size: 11.0,
                    ),
                    SizedBox(width: 7.0),
                    Text(
                      "97%",
                      style: TextStyle(
                        color: Color(0xFF31B9CC),
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 11.0),
        Container(
          height: 211,
          width: 343,
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 6.0,
            top: 7.0,
            bottom: 8.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFFF1F2F6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 132,
                    width: 329,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Rectangle 302@2x.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 35.0,
                      width: 82.0,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          "9 ta darslik",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF0A191E),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    bottom: 18.0,
                    left: 16.0,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Moushn dizayn",
                style: TextStyle(
                  color: Color(0xFF0A191E),
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                "Boshlang'ich darajadagilar uchun",
                style: TextStyle(
                  color: Color(0xFF8F9698),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(height: 4.0),
              Row(
                children: const [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: Color(0xFF31B9CC),
                    size: 11.0,
                  ),
                  SizedBox(width: 7.0),
                  Text(
                    "97%",
                    style: TextStyle(
                      color: Color(0xFF31B9CC),
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ],
    );
  }

  SizedBox _listOfCourses() {
    return SizedBox(
      height: 122.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.77),
            child: InkWell(
              onTap: () {
                setState(() {
                  listOfCoursesindex = 0;
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: listOfCoursesindex == 0
                          ? Color(0xFF31B9CC)
                          : Color(0xFFF1F2F6),
                    ),
                    height: 72.0,
                    width: 71.0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/Vector.png",
                        width: 27.0,
                        height: 35.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Dasturlash",
                    style: TextStyle(
                      color: Color(0xFF0A191E),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.77),
            child: InkWell(
              onTap: () {
                setState(() {
                  listOfCoursesindex = 1;
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: listOfCoursesindex == 1
                          ? Color(0xFF31B9CC)
                          : Color(0xFFF1F2F6),
                    ),
                    height: 72.0,
                    width: 71.0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/dizayn.png",
                        width: 35.0,
                        height: 29.34,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Dizayn",
                    style: TextStyle(
                      color: Color(0xFF0A191E),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.77),
            child: InkWell(
              onTap: () {
                setState(() {
                  listOfCoursesindex = 2;
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: listOfCoursesindex == 2
                          ? Color(0xFF31B9CC)
                          : Color(0xFFF1F2F6),
                    ),
                    height: 72.0,
                    width: 71.0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/social-media-marketing-digital-marketing.png",
                        width: 35.0,
                        height: 35.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Smm",
                    style: TextStyle(
                      color: Color(0xFF0A191E),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.77),
            child: InkWell(
              onTap: () {
                setState(() {
                  listOfCoursesindex = 3;
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: listOfCoursesindex == 3
                          ? Color(0xFF31B9CC)
                          : Color(0xFFF1F2F6),
                    ),
                    height: 72.0,
                    width: 71.0,
                    child: Center(
                      child: Image.asset(
                        "assets/images/english-language-icon.png",
                        width: 31.0,
                        height: 31.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Til kurslari",
                    style: TextStyle(
                      color: Color(0xFF0A191E),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _searchMethod() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.0),
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF1F2F6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: "Izlash",
          hintStyle: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[700],
              fontWeight: FontWeight.w400),
          suffixIcon: const Icon(
            Icons.search,
            color: Color(0xFFF1F2F6),
            size: 28.0,
          ),
        ),
      ),
    );
  }

  Text _appBarSubtitles() {
    return const Text(
      "28 xil yo'nalishda darsliklar mavjud",
      style: TextStyle(
        fontSize: 12.0,
        color: Color(0xFF798184),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text _homePageAppBar() {
    return const Text(
      "Qanday darslar sizni\nqiziqtiradi ?",
      style: TextStyle(
        fontSize: 25.0,
        color: Color(0xFF0A191E),
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.start,
    );
  }
}
