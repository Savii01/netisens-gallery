import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int activeIndex = 0;
  final controller = CarouselController();
  final imagePaths = [
    'images/chairOne.png',
    'images/chairTwo.png',
    'images/chairThree.png',
    'images/chairFour.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(0x1B, 0x06, 0x36, 1),
        elevation: 4,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight / 50,
          ),
        ),
        Center(
          child: CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              height: screenHeight / 4,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              autoPlay: true,
            ),
            itemCount: imagePaths.length,
            itemBuilder: (context, index, realIndex) {
              final image = imagePaths[index];

              return buildImage(image, index);
            },
          ),
        ),
        SizedBox(
          height: screenHeight / 50,
        ),
        buildIndicator(),

        SizedBox(
          height: screenHeight / 50,
        ),

        // Container tiles for widgets
        Container(
          width: screenWidth / 1.1,
          height: screenHeight / 5.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.pink,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/onbarding1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bold Text',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Normal Text',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget buildImage(String image, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(40.0),
        shape: BoxShape.rectangle,
      ),
      // child: Image.asset(
      //   image,
      // ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imagePaths.length,
      effect: const ScrollingDotsEffect(dotWidth: 15, dotHeight: 7),
      onDotClicked: animateToSlide,
    );
  }

  Future<void> animateToSlide(int index) {
    return controller.animateToPage(index);
  }
}
