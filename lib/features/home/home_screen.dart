import 'package:flutter/material.dart';
import 'package:halal_maskin_app/features/home/widgets/category_item_widget.dart';
import 'package:halal_maskin_app/features/home/widgets/food_card_items_widget.dart';
import 'package:halal_maskin_app/features/home/widgets/offer_banner_widget.dart';
import 'package:halal_maskin_app/features/home/widgets/section_header_widget.dart';
import '../../core/common_widgets/text_field_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover new\nculinary delights!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w800,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
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
              // Search
              TextFieldWidget(
                controller: searchController,
                hintText: "Search restaurants...",
                showPrefixIcon: true,
                prefixIcon: Icons.search,
              ),

              const SizedBox(height: 20),

              Text(
                "Top-Rated Restaurants",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 10),

              // Card
              OfferBannerWidget(
                title: "Special Offer\nfor March",
                subtitle: "We are here with the Best Restaurant\nin town.",
                buttonText: "Explore Now",
                onTap: () {},
              ),

              const SizedBox(height: 20),

              // Text
              SectionHeader(
                title: "Popular cuisines",
                actionText: "See all",
                onTap: () {},
              ),

              const SizedBox(height: 10),

              // Category items
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  CategoryItem(
                    icon: Icons.restaurant_menu_outlined,
                    title: "Pizza",
                    onTap: () {},
                  ),

                  CategoryItem(
                    icon: Icons.restaurant_menu_outlined,
                    title: "Fry Fish",
                    onTap: () {},
                  ),

                  CategoryItem(
                    icon: Icons.restaurant_menu_outlined,
                    title: "Coffee",
                    onTap: () {},
                  ),

                  CategoryItem(
                    icon: Icons.restaurant_menu_outlined,
                    title: "Burger",
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Header
              SectionHeader(
                title: "Top-Rated Restaurants",
                actionText: "See all",
                onTap: () {},
              ),

              const SizedBox(height: 10),

              // Food Card
              Row(
                children: [
                  Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    children: [
                      FoodCardItemWidget(
                        title: "Awari Express",
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Iajzp-onUeDOfrpk3zO0QNPzIXXoEBCWXw&s",
                        rating: 4.8,
                        onTap: () {
                          // print("Card tapped!");
                        },
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),

                      FoodCardItemWidget(
                        title: "Grand Continental",
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUN6kUPiRXVlTfwUB7_5FdUcxyT1zCd6rpqQ&s",
                        rating: 4.8,
                        onTap: () {
                          // print("Card tapped!");
                        },
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Header
              SectionHeader(
                title: "Restaurants Nearby",
                actionText: "See all",
                onTap: () {},
              ),

              const SizedBox(height: 10),

              // Food Card
              Row(
                children: [
                  Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    children: [
                      FoodCardItemWidget(
                        title: "Awari Express",
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-8iBoZXLA4otfuG11v8QZiNgvTvvHuJ4bCQ&s",
                        rating: 4.8,
                        onTap: () {
                          // print("Card tapped!");
                        },
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),

                      FoodCardItemWidget(
                        title: "Grand Continental",
                        imageUrl:
                            "https://img.freepik.com/free-photo/we-serve-best-cakes_637285-7884.jpg",
                        rating: 4.8,
                        onTap: () {
                          // print("Card tapped!");
                        },
                        onLikeTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                    ],
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
