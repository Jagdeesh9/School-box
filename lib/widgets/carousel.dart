import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselExample extends StatefulWidget {
  @override
  _CarouselExampleState createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  int _currentIndex = 0; // To track the current page index

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel Slider
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 2000),
              autoPlayCurve: Curves.fastOutSlowIn,
              // enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex =
                      index; // Update current index when page changes
                });
              },
            ),
            items: [
              // Carousel images
              _buildCarouselItem('assets/images/slide-1.jpg'),
              _buildCarouselItem('assets/images/slide-2.jpg'),
              _buildCarouselItem('assets/images/slide-3.jpg'),
              _buildCarouselItem('assets/images/slide-2.jpg'),
            ],
          ),
        ),

        const SizedBox(height: 10),
        // Indicator Row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4, // Total number of items in the carousel
            (index) => _buildIndicator(index),
          ),
        ),
      ],
    );
  }

  // Function to build carousel item
  Widget _buildCarouselItem(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Function to build indicator
  Widget _buildIndicator(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: _currentIndex == index ? 12 : 8, // Bigger for the current index
      height: _currentIndex == index ? 12 : 8, // Bigger for the current index
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}
