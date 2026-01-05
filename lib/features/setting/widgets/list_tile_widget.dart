import 'package:flutter/material.dart';

class CustomSettingTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final IconData? trailingIcon;
  final VoidCallback onTap;
  final bool isTitleCenter;

  const CustomSettingTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.trailingIcon,
    required this.onTap,
    this.isTitleCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            // Leading Icon
            Icon(leadingIcon, color: Colors.black),

            SizedBox(width: 12),

            // Title (Center or Start)
            Expanded(
              child: isTitleCenter
                  ? Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
            ),

            // Trailing icon
            if (trailingIcon != null)
              Icon(trailingIcon, size: 18, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
