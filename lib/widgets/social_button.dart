import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        disabledBackgroundColor:
            Colors.grey.withOpacity(0.12), // Color when button is disabled
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
          side: BorderSide(color: Colors.grey.shade300), // Light grey border
        ),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      icon: Image.asset(icon, height: 24, width: 24),
      label: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}
