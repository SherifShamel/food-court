import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://cdn.sanity.io/images/czqk28jt/prod_bk_us/2b60390402530831a1e97c98d699337a5eefad6c-2000x1000.png?w=650&q=80&fit=max&auto=format"),
                ),
                Text(
                  "Meal",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
