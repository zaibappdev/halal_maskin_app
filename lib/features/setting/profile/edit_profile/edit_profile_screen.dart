import 'package:flutter/material.dart';
import 'package:halal_maskin_app/core/common_widgets/text_field_widget.dart';
import '../../../../core/common_widgets/elevated_button_widget.dart';
import '../../../../routes/app_paths.dart';
import '../../../../routes/navigation_services.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final birthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            NavigationServices.go(AppPaths.settings);
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 25),
        ),

        title: Text("Zaibappdev"),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Image
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEVZJXuK2IaiPz7UDvFB-UQ6vk4E_NNm5vQ&s",
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Name
              TextFieldWidget(
                controller: nameController,
                keyboardType: TextInputType.name,
                hintText: "Enter Your Name",
                label: "Name",
              ),

              const SizedBox(height: 10),

              // Email
              TextFieldWidget(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: "Enter Your Email",
                label: "Email",
              ),

              const SizedBox(height: 10),

              //  Username
              TextFieldWidget(
                controller: usernameController,
                keyboardType: TextInputType.name,
                hintText: "Enter Your Username",
                label: "Username",
              ),

              const SizedBox(height: 10),

              //  Password
              TextFieldWidget(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                hintText: "Enter Your Password",
                label: "Password",
              ),

              const SizedBox(height: 10),

              //  Date of birth
              TextFieldWidget(
                controller: birthController,
                hintText: "Enter Your Birth Date",
                label: "Birth Date",
              ),

              const SizedBox(height: 35),

              // Elevated button
              ElevatedButtonWidget(
                height: 48,
                width: 312,
                text: "Save",
                onPressed: () {
                  NavigationServices.go(AppPaths.profile);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
