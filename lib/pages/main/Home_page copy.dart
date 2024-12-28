import 'package:flutter/material.dart';
import 'package:school_box/colors.dart';
import 'package:school_box/widgets/carousel.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Otp.png'),
            ),

            SizedBox(width: 8), // Space between image and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jagdeesh Bhandari',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome to school box',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Spacer(), // To push the icon to the right
            // ignore: prefer_const_constructors
            Icon(
              Icons.notifications_outlined,
              size: 25,
              color: Pallete.themeBottonColor,
            ),
          ],
        ),
      ),
      body: CarouselExample(),
    );
  }
}
