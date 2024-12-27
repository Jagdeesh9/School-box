import 'package:flutter/material.dart';
import 'package:school_box/pages/bottomNavi.dart';
import 'package:school_box/widgets/textfield.dart';
import 'package:school_box/widgets/themeButton.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController _otpController = TextEditingController();

  void hanldleOtpVerification() {
    print(_otpController);
    if (_otpController.text.length == 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Verification Successful",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Bottomnavi(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Please enter a valid 4-digit code.",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: double.infinity,
          // color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  const Text(
                    'VERIFICATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Enter the verification code sent to your registered mobile number.',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Image
                  Image.asset(
                    'assets/images/Otp.png',
                    // width: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image_not_supported,
                      size: 100,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Input Field for OTP
                  Textfield(
                    hintText: 'Enter 4-digit verification code',
                    controller: _otpController,
                    icon: Icon(Icons.mobile_friendly),
                  ),
                  const SizedBox(height: 16),

                  // Verify Button
                  Themebutton(
                    text: 'Verify',
                    onpressHandler: hanldleOtpVerification,
                  ),

                  const SizedBox(height: 24),

                  // Login Option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigate to Login Screen
                        },
                        child: const Text(
                          'Login with password instead',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
