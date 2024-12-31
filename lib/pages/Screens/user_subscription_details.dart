// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:school_box/common/utils/helpers.dart';
import 'package:school_box/constants/colors.dart';

class UserSubscriptionDetails extends StatefulWidget {
  const UserSubscriptionDetails({super.key});

  @override
  State<UserSubscriptionDetails> createState() =>
      _UserSubscriptionDetailsState();
}

class _UserSubscriptionDetailsState extends State<UserSubscriptionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redBackground,
        title: Text("Subscription Details",
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/slide-1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //subscription row
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: getBorderColor(context),
                ))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: getBorderColor(context),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daily Mix Veg Food Subscription',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Mix veg, Chapatis, 1 mithai, 4 Bananas, Mix \n veg, Chapatis, 1 mithai, 4 Bananas',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(25)),
                              child: const Icon(
                                Icons.currency_rupee_rounded,
                                size: 15,
                                color: AppColors.textWhite,
                              ),
                            ),
                            Text(
                              '2000',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '2500',
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: AppColors.primaryColor,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Helpers.isDarkMode(context)
                        ? const Color(0xff333333)
                        : AppColors.light,
                    border: Border(
                        bottom: BorderSide(
                            color: getBorderColor(context), width: 2))),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Total Days',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('30 days',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Balance Days',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('16 days',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Purchage Date',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('24 Aug 2024, 5:30PM',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Time Slot',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('06: 00AM - 07:00Am',
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: getBorderColor(context),
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: getBorderColor(context),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        'Descrition',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by C',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: getBorderColor(context),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: getBorderColor(context),
                      width: 1,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Note',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'IDear Vendor Ihave A food Allergy With Milk Products. Kindly remove them from my subscription. ',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: getBorderColor(context),
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: getBorderColor(context),
                          width: 1,
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      'Delivery Location',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'House NO- 27,',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          'Rishikesh, Shyampur,',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          '249204',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          'Uttrakhand',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  )
                ],
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
