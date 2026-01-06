import 'package:flutter/material.dart';

import '../home/widgets/food_card_items_widget.dart';

class LikesScreen extends StatefulWidget {
  const LikesScreen({super.key});

  @override
  State<LikesScreen> createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
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

        title: Text(
          "Likes",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.99,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return FoodCardItemWidget(
                title: "Awari Express",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Iajzp-onUeDOfrpk3zO0QNPzIXXoEBCWXw&s",
                rating: 4.8,
                onTap: () {},
                onLikeTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
