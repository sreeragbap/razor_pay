// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SdCarouselSlider extends StatelessWidget {
  List<Widget> items;
  void Function(int)? onPageChanged;
  SdCarouselSlider({Key? key, required this.items, required this.onPageChanged})
      : super(key: key);

  PageController carouselController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: PageView(
                  padEnds: false,
                  pageSnapping: false,
                  controller: carouselController,
                  onPageChanged: onPageChanged,
                  allowImplicitScrolling: true,
                  children: items,
                ),
              ),
            ),
            // Center(child: Text(places[_current])),
            items.length > 1
                ? Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        carouselArrowButton(
                            icon: Icons.arrow_left,
                            onPressed: () {
                              carouselController.previousPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastOutSlowIn);
                            }),
                        carouselArrowButton(
                            icon: Icons.arrow_right,
                            onPressed: () {
                              carouselController.nextPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastOutSlowIn);
                            }),
                      ],
                    ),
                  )
                : kHeight1,
          ]),
          SmoothPageIndicator(
            onDotClicked: ((index) {
              carouselController.jumpToPage(index);
            }),
            controller: carouselController,
            count: items.length,
            effect: const ScrollingDotsEffect(
                activeDotScale: 1.5,
                dotColor: kPrimaryColor,
                activeDotColor: kPrimaryColor,
                spacing: 5,
                dotHeight: 10,
                dotWidth: 10,
                paintStyle: PaintingStyle.fill),
          )
          // const WormEffect(
          //     dotColor: kPrimaryColor,
          //     activeDotColor: kPrimaryColor,
          //     spacing: 5,
          //     type: WormType.thin,
          //     dotHeight: 10,
          //     dotWidth: 10,
          //     paintStyle: PaintingStyle.stroke),
        ],
      ),
    );
  }

  // onchanged(index, other) {
  //   print(index);

  //   _current = index;
  // }

  Widget carouselArrowButton({void Function()? onPressed, IconData? icon}) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon!,
          size: 30,
        ));
  }
}
