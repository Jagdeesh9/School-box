import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:school_box/colors.dart';
import 'package:school_box/common/utils/helpers.dart';
import 'package:school_box/constants/colors.dart';
import 'package:school_box/pages/Screens/subscription_detail.dart';
import 'package:school_box/widgets/carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> _subscription = [];
  List<dynamic> _banners = [];

  // Function to fetch banners
  Future<void> getSubscriptions() async {
    try {
      Response response =
          await Dio().get('https://schoolbox.ilikasofttech.com/api/home');

      setState(() {
        _subscription = response.data['data']['subscriptions'];
        _banners = response.data['data']['banners'];
      });

      print('banners -----------------------------> $_banners');
    } catch (e) {
      print('Error fetching banners: $e');
    }
  }

  void hello() {
    print('hello');
  }

  @override
  void initState() {
    getSubscriptions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
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
      body: Column(
        children: [
          //carousle
          CarouselExample(
            banners: _banners,
          ),

          //sizedbox
          const SizedBox(
            height: 20,
          ),

          //suscription row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Subscription',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "Explore through the popular subscriptions",
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("View all"),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // foood row
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                // Use if the ListView is inside another scrollable widget
                itemCount: _subscription.length, // Number of Foodrow widgets
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Foodrow(
                      title: _subscription[index]['title'],
                      description: _subscription[index]['description'],
                      finalprice: _subscription[index]['final_cost'],
                      cost: _subscription[index]['cost'],
                      image: _subscription[index]['subscription_image'],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Foodrow extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  // ignore: non_constant_identifier_names
  final String finalprice;
  final String cost;
  const Foodrow({
    super.key,
    required this.title,
    required this.description,
    required this.finalprice,
    required this.image,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          context: context,
          builder: (context) {
            return SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150, // Adjust height as needed
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius:
                            BorderRadius.circular(12.0), // Curved corners
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // Shadow color
                            blurRadius: 8, // Blur intensity
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ],
                        border: Border.all(
                          color: getBorderColor(context), // Custom border color
                          width: 1.5,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(12.0), // Match the curve
                        child: Center(
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Daily mix veg food subscription",
                      style: Theme.of(context).textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Mix Veg, Chapati, Mithai, 4 Bananas, Mix Veg, Chapati, Mithai, 4 Bananas',
                      style: Theme.of(context).textTheme.labelLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Subscription_Detail(
                                  title: title,
                                  description: description,
                                  finalprice: finalprice,
                                  cost: cost,
                                  image: image,
                                ),
                              ),
                            );
                          },
                          child: Text('View Details')),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: getBorderColor(context)),
            ),
          ),
          child: Row(
            children: [
              // Image container
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: getBorderColor(context),
                    ),
                  ),
                ),
                height: 80,
                width: 80,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              // Food text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      description,
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
              ),

              // Food price
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: getBorderColor(context),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    // Green icon
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('₹')),
                    ),

                    const SizedBox(
                      height: 2,
                    ),

                    Text(
                      finalprice,
                      style: const TextStyle(
                          color: AppColors.warning, fontSize: 12),
                    ),

                    Text(
                      cost,
                      style: const TextStyle(
                          fontSize: 12,
                          decorationColor: AppColors.darkGrey,
                          color: AppColors.darkGrey,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color getBorderColor(context) {
  return Helpers.isDarkMode(context)
      ? const Color(0xff333333)
      : AppColors.light;
}
