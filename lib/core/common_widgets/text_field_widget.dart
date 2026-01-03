import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;

  // Show/Hide custom suffix icon
  final bool showSuffixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixTap;

  final bool showPrefixIcon;
  final IconData? prefixIcon;

  const TextFieldWidget({
    super.key,
    required this.controller,
    this.label,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.onSuffixTap,
    this.showPrefixIcon = false,
    this.prefixIcon,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 6),
        ],

        TextField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ? isObscured : false,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          cursorColor: Colors.black45,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            prefixIcon: widget.showPrefixIcon
                ? Icon(widget.prefixIcon, color: Colors.black54)
                : null,

            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                    child: Icon(
                      isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black54,
                    ),
                  )
                : widget.showSuffixIcon
                ? GestureDetector(
                    onTap: widget.onSuffixTap,
                    child: Icon(widget.suffixIcon, color: Colors.black54),
                  )
                : null,

            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black26, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF00A24C), width: 1),
            ),
          ),
        ),
      ],
    );
  }
}

/// 🔹 Normal TextField (No Icon)
// TextFieldWidget(
// controller: emailController,
// label: "Email",
// hintText: "Enter your email",
// )

/// 🔹 Password Field With Eye Toggle
// TextFieldWidget(
// controller: passController,
// label: "Password",
// hintText: "Enter your password",
// isPassword: true,
// )

/// 🔹 Custom Suffix Icon (Only Some Screens)
// TextFieldWidget(
// controller: searchController,
// label: "Search",
// hintText: "Search something...",
// showSuffixIcon: true,
// suffixIcon: Icons.search,
// onSuffixTap: () {
// print("Search icon clicked");
// },
// )
