import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://img.freepik.com/free-psd/suit-cover-bag-mockup-psd-retro-style_53876-144910.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-psd/minimal-clothing-label-mockup-psd-fashion-brands_53876-141801.jpg?size=626&ext=jpg',
    'https://img.freepik.com/premium-psd/clothing-hang-tag-mockup_204971-299.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-psd/minimal-shirt-design-with-price-tag_53876-98798.jpg?size=626&ext=jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
              child: Container(
                height: 62,
                width: 400,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 18, 10, 18),
                            child: Image.network(
                                "https://img.icons8.com/ios-glyphs/256/menu.png",
                                scale: 11),
                          ),
                          Image.network(
                              "https://1000logos.net/wp-content/uploads/2022/08/Myntra-Logo-768x432.png",
                              scale: 10),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.network(
                              "https://img.icons8.com/ios-glyphs/256/search.png",
                              scale: 11),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.network(
                              "https://img.icons8.com/windows/256/appointment-reminders.png",
                              scale: 10),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.network(
                              "https://img.icons8.com/ios-glyphs/256/hearts.png",
                              scale: 11),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7),
                          child: Image.network(
                              "https://img.icons8.com/windows/256/shopping-bag.png",
                              scale: 10),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Container(
                height: 68,
                width: 400,
                decoration: BoxDecoration(color: Colors.white),
                child: Image.network(
                    "https://plus.unsplash.com/premium_photo-1673502752899-04caa9541a5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8U0hPUFBJTkclMjBPRkZFUnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Column(
                  children: [
                    CarouselSlider.builder(
                        carouselController: controller,
                        itemCount: urlImages.length,
                        itemBuilder: (context, index, realIndex) {
                          final urlImage = urlImages[index];
                          return buildImage(urlImage, index);
                        },
                        options: CarouselOptions(
                            height: 260,
                            aspectRatio: 1.0,
                            autoPlay: true,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration: Duration(seconds: 2),
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildIndicator(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                width: 480,
                height: 300,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Text(
                        "FEATURED BRANDS",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1630905997561-4e240c7c5edd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFzdHJhY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1587467512961-120760940315?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGxvdWlzJTIwdnVpdHRvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1616150638538-ffb0679a3fc4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2xvdGglMjBicmFuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                width: 400,
                height: 330,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                      child: Text(
                        "YOU MIGHT ALSO LIKE",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Flexible(
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 230,
                                        child: Image.network(
                                          "https://img.freepik.com/free-photo/bff-printed-red-hoodie_53876-105408.jpg?size=338&ext=jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          "HODDIES",
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 230,
                                        child: Image.network(
                                          "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8U0hJUlRTfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          "SHIRTS",
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 230,
                                        child: Image.network(
                                          "https://images.unsplash.com/photo-1665099270966-117af60eb9aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fFNBUkVFfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Text(
                                          "SAREES",
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.white,
          radius: 10,
          dotHeight: 6,
          dotWidth: 6,
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) =>
    Container(child: Image.network(urlImage, fit: BoxFit.contain));
