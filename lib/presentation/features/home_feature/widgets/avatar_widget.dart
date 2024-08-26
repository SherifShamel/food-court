import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final ImageProvider image;
  final String mealName;

  const AvatarWidget({Key? key, required this.image, required this.mealName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: image,
                ),
                Text(
                  mealName,
                  style: const TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
