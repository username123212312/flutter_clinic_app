import 'package:flutter/material.dart';

class CustomGoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String imagePath;

  const CustomGoogleButton({
    super.key,
    required this.onPressed,
    this.text = 'Google',
    this.imagePath = 'assets/icons/ic_google.png',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(imagePath, height: 24, width: 24),
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
