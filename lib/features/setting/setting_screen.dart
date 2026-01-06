import 'package:flutter/material.dart';
import 'package:halal_maskin_app/features/setting/widgets/list_tile_widget.dart';
import '../../routes/app_paths.dart';
import '../../routes/navigation_services.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,

        leading: IconButton(
          onPressed: () {
            NavigationServices.push(AppPaths.dashboard);
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 25),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Account Section
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ListTileWidget(
                leadingIcon: Icons.person_outline,
                title: "Profile",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () {
                  NavigationServices.push(AppPaths.profile);
                },
              ),

              ListTileWidget(
                leadingIcon: Icons.lock_outline,
                title: "Password",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),

              ListTileWidget(
                leadingIcon: Icons.notifications_none,
                title: "Notifications",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),

              // Categories Section
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),

              ListTileWidget(
                leadingIcon: Icons.table_bar_outlined,
                title: "Explore Cuisines",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                isTitleCenter: true,
                onTap: () {},
              ),

              ListTileWidget(
                leadingIcon: Icons.star_rate_outlined,
                title: "Rate & Review",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),

              ListTileWidget(
                leadingIcon: Icons.help_outline_outlined,
                title: "Help & Support",
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ),

              ListTileWidget(
                leadingIcon: Icons.login_outlined,
                title: "Logout",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
