import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class CarouselExample extends StatefulWidget {
  List<dynamic> banners = [];
  CarouselExample({super.key, required this.banners});

  @override
  _CarouselExampleState createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  int _currentIndex = 0; // To track the current page index
  List<String> _banners = []; // Store banners fetched from the API

  // Function to fetch banners
  Future<void> getBanners() async {
    try {
      Response response =
          await Dio().get('https://schoolbox.ilikasofttech.com/api/home');

      setState(() {
        _banners = List<String>.from(
          response.data['data']['banners'].map((item) => item['value']),
        );
      });
    } catch (e) {
      print('Error fetching banners: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel Slider
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: _banners.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: _banners
                      .map((imageUrl) => _buildCarouselItem(imageUrl))
                      .toList(),
                ),
        ),

        const SizedBox(height: 10),
        // Indicator Row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _banners.length, // Use dynamic length based on banners
            (index) => _buildIndicator(index),
          ),
        ),
      ],
    );
  }

  // Function to build carousel item
  Widget _buildCarouselItem(String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
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
