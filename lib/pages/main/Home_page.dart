import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
    Future.microtask(() {
      Provider.of<BackgroundColorProvider>(context, listen: false)
          .fetchTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);

    // Define light and dark mode colors
    final lightBackgroundColor = Colors.white;
    final darkBackgroundColor = Colors.black;
    final lightTextColor = Colors.black;
    final darkTextColor = Colors.white;

    return Scaffold(
      backgroundColor: backgroundColorProvider.isdarkmodechecked
          ? darkBackgroundColor
          : lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColorProvider.isdarkmodechecked
            ? darkBackgroundColor
            : lightBackgroundColor,
        title: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Makes the image circular
                image: DecorationImage(
                  image: AssetImage('assets/Otp.png'),
                  fit: BoxFit.cover, // Ensures the image is properly fitted inside the circle
                ),
              ),
            ),
            const SizedBox(width: 20), // Space between image and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gorave',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: backgroundColorProvider.isdarkmodechecked
                          ? darkTextColor
                          : lightTextColor),
                ),
                Text(
                  'Welcome to school box',
                  style: TextStyle(
                      fontSize: 12,
                      color: backgroundColorProvider.isdarkmodechecked
                          ? darkTextColor.withOpacity(0.8)
                          : lightTextColor.withOpacity(0.8)),
                ),
              ],
            ),
            const Spacer(), // To push the icon to the right
            Icon(
              Icons.notifications_outlined,
              color: backgroundColorProvider.isdarkmodechecked
                  ? darkTextColor
                  : lightTextColor,
              size: 30,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Carousel slider
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                // Carousel images
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset('assets/first.jpeg', fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset('assets/Otp.png', fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset('assets/sce.png', fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset('assets/splash.png', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          // Additional content (e.g., another Row with icon and text)
          Container(
            margin: const EdgeInsets.only(top: 250, left: 20, right: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Subscriptions',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: backgroundColorProvider.isdarkmodechecked
                              ? darkTextColor
                              : lightTextColor),
                    ),
                    Text(
                      'Explore through  popular subscriptions',
                      style: TextStyle(
                          fontSize: 12,
                          color: backgroundColorProvider.isdarkmodechecked
                              ? darkTextColor.withOpacity(0.8)
                              : lightTextColor.withOpacity(0.8)),
                    ),
                  ],
                ),
                InkWell(
                  
                )
                // const Spacer(),
                // Icon(
                //   Icons.notifications_outlined,
                //   color: backgroundColorProvider.isdarkmodechecked
                //       ? darkTextColor
                //       : lightTextColor,
                //   size: 30,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
