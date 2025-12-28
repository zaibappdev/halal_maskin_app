import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final VoidCallback onPressed;

  const ElevatedButtonWidget({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00A24C),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
