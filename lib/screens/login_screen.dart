import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/widgets/custom_text_feild.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isButtonEnabled = false;

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = emailController.text.isNotEmpty &&
          passwordController.text.length >= 8;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(_updateButtonState);
    passwordController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/quran.png',
                  width: 120, height: 120), // Increased size
              const SizedBox(height: 16),
              Text(
                'Exploring Truth and Serenity with the Quran',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                controller: emailController,
                label: 'Your email address',
                hintText: 'astiyanur@gmail.com',
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                label: 'Choose a password',
                hintText: 'min. 8 characters',
                isPassword: true,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: isButtonEnabled ? () {} : null,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: const Text('Continue'),
              ),
              const SizedBox(height: 16),
              SocialButton(
                icon: 'assets/icons/google.png',
                text: 'Continue with Google',
                onPressed: () {},
              ),
              const SizedBox(height: 8),
              SocialButton(
                icon: 'assets/icons/apple.png',
                text: 'Continue with Apple',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
