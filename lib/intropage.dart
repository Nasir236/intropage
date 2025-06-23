// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intropage/home.dart';
import 'package:intropage/intro_screen/intro_page1.dart';
import 'package:intropage/intro_screen/intro_page2.dart';
import 'package:intropage/intro_screen/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  PageController _controller = PageController();

  // on the lastPage
  bool onthelastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onthelastpage = (index == 2);
              });
            },
            children: [Intropage1(), Intropage2(), Intropage3()],
          ),

          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // left Side
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("Back"),
                ),

                SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: 3,
                  effect: WormEffect(), // your preferred effect
                  onDotClicked: (index) {},
                ),

                // Right Side
                onthelastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),

      // dot indicator
    );
  }
}
