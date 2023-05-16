import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/movies.dart';
import '../widget/background_widget.dart';
import '../widget/button_widget.dart';
import '../widget/movie_card.dart';

class HomePage extends StatelessWidget {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.close),
        actions: [Icon(Icons.person_outline), SizedBox(width: 15)],
      ),
      body: Stack(
        children: [
          BackgroundWidget(controller: controller, key: UniqueKey()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: movies
                      .map(
                        (movie) => MovieCardWidget(
                      movie: movie,
                      key: UniqueKey(),
                    ),
                  )
                      .toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.75,
                    height: MediaQuery.of(context).size.height * 0.7,
                    enlargeCenterPage: true,
                    onPageChanged: (index, _) => controller.animateToPage(
                      index,
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    ),
                  ),
                ),
                BuyButtonWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
