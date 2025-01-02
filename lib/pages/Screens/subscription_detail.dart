import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class Subscription_Detail extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  // ignore: non_constant_identifier_names
  final String finalprice;
  final String cost;
  const Subscription_Detail(
      {super.key,
      required this.title,
      required this.image,
      required this.description,
      required this.finalprice,
      required this.cost});

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    image,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              Container(
                                // width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Icon(
                                  Icons.currency_rupee_rounded,
                                  color: AppColors.textWhite,
                                ),
                              ),
                              Text(
                                finalprice,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Text(
                              //   cost,
                              //   style: const TextStyle(
                              //     fontSize: 16,
                              //     // decoration: TextDecoration.lineThrough,
                              //     color: AppColors.secondaryColor,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 500,
                    height: 1,
                    decoration: BoxDecoration(
                        // ignore: deprecated_member_use
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
                    // ignore: deprecated_member_use
                    color: AppColors.textSecondary.withOpacity(0.5)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
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
                        decoration: const BoxDecoration(
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
                            const Padding(
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
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Enter a pin code',
                                    labelStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                    hintStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                )),
                            Container(
                              width: 500,
                              height: 3,
                              decoration: const BoxDecoration(
                                  color: AppColors.secondaryColor),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
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
                    child: const Center(
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
        ));
  }
}
