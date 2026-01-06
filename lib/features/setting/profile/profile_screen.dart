import 'package:flutter/material.dart';
import 'package:halal_maskin_app/features/setting/profile/widgets/profile_button.dart';
import 'package:halal_maskin_app/features/setting/profile/widgets/state_items_widget.dart';
import 'package:halal_maskin_app/routes/app_paths.dart';
import 'package:halal_maskin_app/routes/navigation_services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            NavigationServices.push(AppPaths.settings);
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 25),
        ),

        title: Text("Zaibappdev"),

        actions: [
          Icon(Icons.ios_share_outlined, color: Colors.black, size: 20),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.black, size: 20),
          ),
        ],
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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

              const SizedBox(height: 5),

              Text(
                "zaib_mughal_09",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                "Member since September 2024",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),

              const SizedBox(height: 15),

              // Edit Profile & Share Profile Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileButton(text: "Edit Profile", onTap: () {}),

                  const SizedBox(width: 10),

                  ProfileButton(text: "Share Profile", onTap: () {}),
                ],
              ),

              const SizedBox(height: 15),

              // Followers, Following, Rank on Halal Food
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatItem(number: "2.6K", label: "Followers", onTap: () {}),

                  StatItem(number: "544", label: "Following", onTap: () {}),

                  StatItem(
                    number: "0",
                    label: "Rank on Halal Food",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
