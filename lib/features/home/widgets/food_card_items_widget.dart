import 'package:flutter/material.dart';

class FoodCardItemWidget extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double rating;
  final VoidCallback? onTap; // For card tap
  final VoidCallback? onLikeTap; // Callback for like tap (optional)

  const FoodCardItemWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.rating,
    this.onTap,
    this.onLikeTap,
  });

  @override
  State<FoodCardItemWidget> createState() => _FoodCardItemWidgetState();
}

class _FoodCardItemWidgetState extends State<FoodCardItemWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.imageUrl),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                      });

                      if (widget.onLikeTap != null) {
                        widget.onLikeTap!();
                      }
                    },
                    child: Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red : Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 3),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text(
                widget.rating.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
