import 'package:flutter/material.dart';

class OutLinedButtonWidget extends StatelessWidget {
  final String text;
  final String? image;
  final double height;
  final double width;
  final VoidCallback onPressed;

  const OutLinedButtonWidget({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.black12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: onPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),

            if (image != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(image!, height: 24, width: 24),
              ),
          ],
        ),
      ),
    );
  }
}
