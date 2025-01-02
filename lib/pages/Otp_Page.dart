import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:school_box/pages/Screens/signupform.dart';
import 'package:school_box/widgets/textfield.dart';
import 'package:school_box/widgets/themeButton.dart';

// ignore: must_be_immutable
class OtpPage extends StatefulWidget {
  String mobile;
  OtpPage({super.key, required this.mobile});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController _otpController = TextEditingController();

  Future<void> hanldleOtpVerification() async {
    print(widget.mobile); //403861
    try {
      // Make the API call
      Response response = await Dio().post(
        'https://schoolbox.ilikasofttech.com/api/verify_phone_otp',
        data: {
          'phone': widget.mobile, // Replace with actual phone number
          'device_token':
              'daefsrgdthyftdgvs', // Replace with actual device token
          'type': 'customer',
          'query_type': 'signup',
          'otp': _otpController.text, // Use OTP from the controller
        },
      );

      // Log the response for debugging
      print("Response: ${response.data}");

      // Check if the response status is successful
      if (response.data['status'] == '200') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text("${response.data['message']}"),
          ),
        );

        // Navigate to the next page or perform further actions
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Signupform(mobile: widget.mobile),
          ), // Replace `NextPage` with your desired page
        );
      } else {
        // Handle API errors with custom messages
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              response.data['message'] ??
                  "OTP verification failed. Please try again.",
            ),
          ),
        );
      }
    } on DioException catch (e) {
      // Handle Dio-specific errors
      print("Dio Error: ${e.response?.data}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            e.response?.data['message'] ?? "Network error. Please try again.",
          ),
        ),
      );
    } catch (e) {
      // Handle unexpected errors
      print("Unexpected Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text("An unexpected error occurred. Please try again."),
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
