import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/core.dart';

class BannerSlider extends StatefulWidget {
  final List<String> items;
  const BannerSlider({super.key, required this.items});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceHeight(130),
          CarouselSlider(
            items: widget.items
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: AppColors.white,
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: Image.asset(
                          e,
                          height: 206.0,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              // aspectRatio: 315 / 152,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                _current = index;
                setState(() {});
              },
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: widget.items.asMap().entries.map((entry) {
          //     return GestureDetector(
          //       onTap: () => _controller.animateToPage(entry.key),
          //       child: Container(
          //         width: _current == entry.key ? 20.0 : 8.0,
          //         height: 8.0,
          //         margin: const EdgeInsets.symmetric(horizontal: 4.0),
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(30.0),
          //             color: (Theme.of(context).brightness == Brightness.dark
          //                     ? AppColors.black
          //                     : AppColors.primary)
          //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
