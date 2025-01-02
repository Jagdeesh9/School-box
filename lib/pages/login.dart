import 'package:flutter/material.dart';
import 'package:school_box/pages/Singup_page.dart';
import 'package:school_box/pages/main/Home_page.dart';
import 'package:school_box/widgets/textfield.dart';
import 'package:school_box/widgets/themeButton.dart';
import 'package:dio/dio.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> handleLogin() async {
    try {
      Response response = await Dio().post(
        'https://schoolbox.ilikasofttech.com/api/login',
        data: {
          'id': idController.text,
          'password': passwordController.text,
          'device_token': 'daefsrgdthyftdgvs',
          'type': 'customer',
        },
      );

      // Check if login is successful based on response
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text("Login successful!"),
          ),
        );

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text("Login failed: ${response.data['message']}"),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("An error occurred: $e"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header
                Text('Login',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 1),
                Text('Login with your account',
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
                  controller: idController,
                  hintText: 'Enter mobile number or email',
                  icon: const Icon(Icons.mobile_screen_share),
                ),
                const SizedBox(height: 10),
                Textfield(
                  controller: passwordController,
                  hintText: 'Enter Password',
                  icon: const Icon(Icons.lock),
                ),
                const SizedBox(height: 16),

                // Login Button
                Themebutton(
                  onpressHandler: handleLogin,
                  text: 'Login',
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
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Don\'t have an account? Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
