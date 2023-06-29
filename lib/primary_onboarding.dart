import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:netisens_gallery/SplashScreen.dart';
import 'package:netisens_gallery/first_onboarding_screen.dart';
import 'package:netisens_gallery/fourth_onboarding_screen.dart';
import 'package:netisens_gallery/second_onboarding_screen.dart';
import 'package:netisens_gallery/third_onboarding_screen.dart';



class PrimaryOnBoarding extends StatefulWidget {
  const PrimaryOnBoarding({Key? key}) : super(key: key);

  @override
  State<PrimaryOnBoarding> createState() => _PrimaryOnBoardingState();
}

class _PrimaryOnBoardingState extends State<PrimaryOnBoarding> {
  final PageController _pageController = PageController(initialPage: 0);
  DotsDecorator decorator = const DotsDecorator();
  int activePage = 0;

  final List<Widget> pages = [
    Container(
      color: Colors.transparent,
      child: FirstOnboardingScreen(),
    ),
    Container(
      color: Colors.transparent,
      child: SecondOnboardingScreen(),
    ),
    Container(
      color: Colors.transparent,
      child: ThirdOnboardingScreen(),
    ),
    Container(
      color: Colors.transparent,
      child: FourthOnboardingScreen(),
    ),


  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState((){

      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  _onchanged(int index) {
    setState(() {
      activePage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onchanged,
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, int index) {
                return pages[index];
              },
            ),
          ),

          Positioned(
            bottom: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: screenWidth,
              color: Colors.transparent,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List<Widget>.generate(pages.length, (int index) {
                        return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 10,
                            width: (index == activePage) ? 30 : 10,
                            margin:
                            const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (index == activePage)
                                    ? Colors.white
                                    : Colors.orange ));
                      })),
                  InkWell(
                    onTap: () {
                      if (activePage == pages.length - 1) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashScreen()));
                      }
                      else {
                        _pageController.nextPage(duration: const Duration(milliseconds: 800), curve: Curves.easeInOutQuint);
                      }
                    },

                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 300),
                      height: screenHeight  / 16.9,
                      width: (activePage == (pages.length - 1)) ? 200 : 75,
                      decoration: BoxDecoration(
                          color:Colors.transparent,
                          borderRadius: BorderRadius.circular(60)),
                      child: (activePage == (pages.length - 1)) ? const Text("Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                          : const Icon(
                        Icons.keyboard_double_arrow_right,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
