import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class Subscription_Detail extends StatefulWidget {
  const Subscription_Detail({super.key});

  @override
  State<Subscription_Detail> createState() => _Subscription_DetailState();
}

class _Subscription_DetailState extends State<Subscription_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Subscription Details',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          backgroundColor: AppColors.redBackground,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/slide-1.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Daily Mix Veg Food \nSubscription',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Mix veg, Chapatis, 1 mithai, 4 Bananas, Mix \n veg, Chapatis, 1 mithai, 4 Bananas',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          // margin: EdgeInsets.only(top: 20),
                          width: 1,
                          height: 150,
                          decoration: BoxDecoration(
                              color: AppColors.textSecondary.withOpacity(0.5)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Icon(
                                  Icons.currency_rupee_rounded,
                                  color: AppColors.textWhite,
                                ),
                              ),
                              const Text(
                                '2000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '2500',
                                style: TextStyle(
                                  fontSize: 16,
                                  // decoration: TextDecoration.lineThrough,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 500,
                      height: 1,
                      decoration: BoxDecoration(
                          color: AppColors.textSecondary.withOpacity(0.5)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  width: 500,
                  height: 1,
                  decoration: BoxDecoration(
                      color: AppColors.textSecondary.withOpacity(0.5)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur..',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Note :',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          'STEEL TIFFIN AVAILABLE WITH SOME ADDITIONAL \n CHARGE. FOR MORE DETAIL CONTACT US',
                          style: Theme.of(context).textTheme.labelLarge),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    height: 150,
                    decoration: BoxDecoration(
                        color: AppColors.textSecondary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Check Availability',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 500,
                          height: 1,
                          decoration:
                              const BoxDecoration(color: AppColors.textPrimary),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  20), // Apply a radius to the top-left corner
                              topRight: Radius.circular(
                                  20), // Apply a radius to the top-right corner
                            ),
                            color: AppColors.textWhite,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                                child: Text(
                                  'Pin',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Enter a pin code',
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                            hintStyle:  Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                            ),
                                            
                                  )),
                              Container(
                                width: 500,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryColor),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 4.0,
                          ),
                          child: Text(
                            'We deliver to your location',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.secondaryColor,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textWhite),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
