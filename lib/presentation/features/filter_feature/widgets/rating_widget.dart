import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final String rating;
  const RatingWidget({required this.rating, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        children: [
          const Icon(Icons.star),
          Text(rating),
        ],
      ),
    );
  }
}
