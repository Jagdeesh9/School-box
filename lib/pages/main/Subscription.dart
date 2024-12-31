import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Subscriptions ',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.redBackground,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Daily Mix Veg Subscription',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cost',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('₹ 2000',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Status',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('Active',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Days',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('30 Days',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Balance Days',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('16 Days',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Purchase Date',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('24 Aug 2024, 5:30 PM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Time Slot',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('6:00 AM - 7:00 AM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 150),
                            ElevatedButton(
                              onPressed: () {
                                // Handle pause button press
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.light,
                                side:
                                    BorderSide(color: AppColors.redBackground),
                              ),
                              child: Text('View',
                                  style: TextStyle(
                                      color: AppColors.redBackground)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _showPauseSheet(context);
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(color: AppColors.textPrimary),
                              ),
                              child: Text('Pause'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Daily Mix Veg Subscription',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cost',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('₹ 2000',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Status',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('Inactive',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Days',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('30 Days',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Balance Days',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('16 Days',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Purchase Date',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('24 Aug 2024, 5:30 PM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Time Slot',
                                style: Theme.of(context).textTheme.titleMedium),
                            Text('6:00 AM - 7:00 AM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 150),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.light,
                                side:
                                    BorderSide(color: AppColors.redBackground),
                              ),
                              child: Text('View',
                                  style: TextStyle(
                                      color: AppColors.redBackground)),
                            ),
                            Container(
                              // margin: EdgeInsets.all(8.0),
                              // padding: EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  _showResumeSheet(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.secondaryColor,
                                  side:
                                      BorderSide(color: AppColors.textPrimary),
                                ),
                                child: Text('Resume'),
                              ),
                            ),
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

  void _showPauseSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pause Subscription',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  // margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    // borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 3.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'From',
                      hintText: 'dd/mm/yyyy',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 3.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Up To',
                      hintText: 'dd/mm/yyyy',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                // SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // margin: EdgeInsets.all(10),
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppColors.redBackground,
                        borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle pause subscription logic
                      },
                      child: Text('Pause Now'),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Terms & Conditions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                    'If you want to pause your subscription, please select start date and end date. In case you did not decide your end date, select the "Decide later" option.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge)
              ],
            ),
          ),
        );
      },
    );
  }

  void _showResumeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Resume Subscription',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  // margin: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    // borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 3.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Paused From',
                      hintText: '01/1/2025',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // margin: EdgeInsets.all(10),
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppColors.redBackground,
                        borderRadius: BorderRadius.circular(25)),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle pause subscription logic
                      },
                      child: Text('Resume Now'),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Terms & Conditions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                    'If you want to pause your subscription, please select start date and end date. In case you did not decide your end date, select the "Decide later" option.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge)
              ],
            ),
          ),
        );
      },
    );
  }
}
