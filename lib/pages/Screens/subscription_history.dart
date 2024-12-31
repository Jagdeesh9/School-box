import 'package:flutter/material.dart';
import 'package:school_box/constants/colors.dart';

class SubscriptionHistorys extends StatefulWidget {
  const SubscriptionHistorys({super.key});

  @override
  State<SubscriptionHistorys> createState() => _SubscriptionHistorysState();
}

class _SubscriptionHistorysState extends State<SubscriptionHistorys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Subscription History',
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Delivery Details',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'S.No',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Date',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Deliverd',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '6',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pause/Resume detail',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'S.No',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Date',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Deliverd',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Pause',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.redBackground),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Pause',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.redBackground),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Resume',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Resume',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Container(
                decoration:
                    BoxDecoration(color: AppColors.black.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '1-1-25',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Resume',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '6',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '1-1-25',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Resume',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 2,
                color: AppColors.black.withOpacity(0.3),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )),
        ));
  }
}
