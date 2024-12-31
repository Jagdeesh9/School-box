import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  void initState() {
    super.initState();
    // Fetch color settings from the backend when the screen loads
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help & Support"),
        backgroundColor: AppColors.redBackground,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ticket Summary Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.receipt, size: 32, color: AppColors.dark),
                      SizedBox(height: 8),
                      Text(
                        "20",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "Total Ticket",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12.0),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.timelapse,
                              size: 32, color: AppColors.dark),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Text(
                                  "08",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  "Open Ticket",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(12.0),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.check_circle,
                              size: 32, color: AppColors.dark),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                Text(
                                  "22",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  "Closed Ticket",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                        fontSize: 10,
                                      ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(height: 20),
            // Recent Tickets Section
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Recent Tickets",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "View all your  recent Tickets",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        backgroundColor: AppColors.textWhite),
                    child: Center(
                      child: Text(
                        "View all",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.brown),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.redBackground,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Open'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.redBackground,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // secound box
            //? secound box
            // secound box
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Text(
                      'Ticket ID #1234B5',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'Ticket Subject',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Delivery was scheduled \n yesterday but not \n arrived at time',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Container(
                  width: 2,
                  height: 180,
                  color: AppColors.textSecondary.withOpacity(0.3),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align children to start
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Close'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                    Text(
                      'Jan 1, 2025',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              decoration: BoxDecoration(
                color: AppColors.textSecondary.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Raise New Ticket Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  backgroundColor: AppColors.textWhite),
              child: Center(
                child: Text(
                  "Raise New Ticket",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
