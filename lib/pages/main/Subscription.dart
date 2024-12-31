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
              style: Theme.of(context).textTheme.headlineSmall,
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
                  // margin: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Daily Mix Veg Subscription',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(height: 16),
                      _buildRow('Cost', '₹ 2000'),
                      _buildRow('Status', 'Active',
                          valueStyle:
                              TextStyle(color: AppColors.secondaryColor)),
                      _buildRow('Total Days', '30 Days'),
                      _buildRow('Balance Days', '16 Days'),
                      _buildRow('Purchase Date', '24 Aug 2024, 5:30 PM'),
                      _buildRow('Time Slot', '6:00 AM - 7:00 AM'),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _showBottomSheet(context);
                              },
                              style: ElevatedButton.styleFrom(
                                // iconColor: AppColors.redBackground,
                                backgroundColor: AppColors.light,
                                // : Colors.black,
                                side:
                                    BorderSide(color: AppColors.redBackground),
                              ),
                              child: Text(
                                'View',
                                style:
                                    TextStyle(color: AppColors.redBackground),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle pause button press
                              },
                              style: ElevatedButton.styleFrom(
                                  iconColor: AppColors.primaryColor,
                                  side:
                                      BorderSide(color: AppColors.textPrimary)),
                              child: Text('Pause'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  // margin: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Daily Mix Veg Subscription',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(height: 16),
                      _buildRow('Cost', '₹ 2000'),
                      _buildRow('Status', 'Inactive',
                          valueStyle:
                              TextStyle(color: AppColors.redBackground)),
                      _buildRow('Total Days', '30 Days'),
                      _buildRow('Balance Days', '16 Days'),
                      _buildRow('Purchase Date', '24 Aug 2024, 5:30 PM'),
                      _buildRow('Time Slot', '6:00 AM - 7:00 AM'),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle view button press
                              },
                              style: ElevatedButton.styleFrom(
                                // iconColor: AppColors.redBackground,
                                backgroundColor: AppColors.light,
                                // : Colors.black,
                                side:
                                    BorderSide(color: AppColors.redBackground),
                              ),
                              child: Text(
                                'View',
                                style:
                                    TextStyle(color: AppColors.redBackground),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Handle pause button press
                              },
                              style: ElevatedButton.styleFrom(
                                  // iconColor: AppColors.secondaryColor,
                                  backgroundColor: AppColors.secondaryColor,
                                  side:
                                      BorderSide(color: AppColors.textPrimary)),
                              child: Text('Pause'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ));
  }

  void _showBottomSheet(BuildContext context) {
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

  Widget _buildRow(String label, String value, {TextStyle? valueStyle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              style: valueStyle ?? TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
