// ignore: file_names
import 'package:flutter/material.dart';
import 'package:school_box/pages/Otp_Page.dart';
import 'package:school_box/widgets/textfield.dart';
import 'package:school_box/widgets/themeButton.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController mobileNumberController = TextEditingController();
  bool _isChecked = false;

  void sendOtpHandler() {
    if (_isChecked) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OtpPage(),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "A verification code has been sent to your number",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Please agree to the terms before proceeding.",
            style: TextStyle(color: Colors.white),
          ),
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
                const Text(
                  'SIGNUP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 1),
                const Text(
                  'New here? Register your account today.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

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
                    const Expanded(
                      child: Text(
                        'By continuing, I agree to the Terms of Use & Privacy Policy.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
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
                        // Navigate to Login Screen
                      },
                      child: const Text(
                        'Already have an account? Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
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
