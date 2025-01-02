// ignore: file_names
import 'package:flutter/material.dart';
import 'package:school_box/pages/Otp_Page.dart';
import 'package:school_box/pages/login.dart';
import 'package:school_box/pages/main/Home_page.dart';
import 'package:school_box/widgets/textfield.dart';
import 'package:school_box/widgets/themeButton.dart';
import 'package:dio/dio.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController mobileNumberController = TextEditingController();
  bool _isChecked = false;

  Future<void> sendOtpHandler() async {
    if (_isChecked) {
      Response response = await Dio().post(
        'https://schoolbox.ilikasofttech.com/api/check_ph_send_otp',
        data: {
          'phone': mobileNumberController.text,
          'device_token': 'daefsrgdthyftdgvs',
          'type': 'customer',
          'query_type': 'signup',
        },
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("${response.data['message']}"),
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OtpPage(mobile: mobileNumberController.text);
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text("accept terms and condition first"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header
                Text('SIGNUP',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 1),
                Text('New here? Register your account today.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall),

                // Image
                Image.asset(
                  'assets/images/first.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 24),

                // Input Field with Mobile Icon
                Textfield(
                  hintText: 'Enter mobile number here',
                  controller: mobileNumberController,
                  icon: const Icon(Icons.mobile_screen_share),
                ),
                const SizedBox(height: 16),

                // Terms and Conditions with Checkbox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      activeColor: Colors.green,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                          'By continuing, I agree to the Terms of Use & Privacy Policy.',
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Send OTP Button
                Themebutton(
                  onpressHandler: sendOtpHandler,
                  text: 'Sent OTP',
                ),
                const SizedBox(height: 16),

                // Login Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: Text(
                        'Already have an account? Login',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(decoration: TextDecoration.underline)
                            .copyWith(decorationColor: getBorderColor(context)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
