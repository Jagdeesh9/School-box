import 'package:flutter/material.dart';
import 'package:school_box/common/utils/helpers.dart';
import 'package:school_box/constants/colors.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    List timeSlot = [
      '8:30 - 9:00 AM',
      '10:00 - 10:30 AM',
      '11:30 - 12:00 PM',
      '8:30 - 9:00 AM',
      '10:00 - 10:30 AM',
      '11:30 - 12:00 PM'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redBackground,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Info Section
              Container(
                padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color: getBorderColor(context),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/slide-1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Mix Veg',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          '₹2000 / 30 days',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Delivery Info Section
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: getBorderColor(context),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: getBorderColor(context)),
                          ),
                        ),
                        child: Text(
                          'Delivered to',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text('Gaurav Amoli, 12877391'),
                      const Text('jagdeeshbhandari05@gmail.com'),
                      const Text('Geetanagar , Rishikesh, Uttrakhand'),
                      const Text('India'),
                      const Text('249192'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Time Slot Section
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: getBorderColor(context),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: getBorderColor(context)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Select Time Slot',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              '12/10/2014',
                              style: Theme.of(context).textTheme.titleLarge,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 100, // Set a fixed height for GridView
                        child: GridView.builder(
                          itemCount: timeSlot.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // Number of columns
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                          ),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 5,
                              child: Center(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    timeSlot[index],
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: getBorderColor(context),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: getBorderColor(context)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Note: ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(fontStyle: FontStyle.italic),
                                ),
                                const Text('Food Allergy(If any)')
                              ],
                            ),
                            Icon(
                              Icons.edit,
                              color: getBorderColor(context),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                          "I have allergy with With Food, Please Replace it soon I have allergy with With Food, Please Replace it soon")
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: getBorderColor(context),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: getBorderColor(context)),
                          ),
                        ),
                        child: Table(
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Price',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('₹2000.00',
                                      textAlign: TextAlign.end,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Need Steet Tiffin',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('₹0.0',
                                      textAlign: TextAlign.end,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Have a promocode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: AppColors.secondaryColor),
                                  ),
                                ),
                                SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Set a fixed height for GridView
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Price',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              "₹2000.00",
                              style: Theme.of(context).textTheme.titleLarge,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Color getBorderColor(context) {
  return Helpers.isDarkMode(context) ? AppColors.buttonSecondary : Colors.grey;
}
