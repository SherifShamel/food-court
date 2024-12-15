import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: InkWell(
        onTap: () {},
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 24),
            Divider(thickness: 1),
            SizedBox(height: 20),
            Text(
              "To Make An Order",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1,
            ),
            SizedBox(height: 20),
            Text(
              "Just Call Us On 0123456789",
            ),
            SizedBox(height: 15),
            Text(
              "You Can Pay Cash On Delivery,\n Or Online On The Same Number",
            ),
            SizedBox(height: 50),
            Text(
              "Bon appétit <3",
            ),
          ],
        ),
      ),
    );
  }
}
