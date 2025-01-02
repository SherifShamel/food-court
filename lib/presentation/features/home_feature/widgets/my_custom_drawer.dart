import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCustomDrawer extends StatefulWidget {
  const MyCustomDrawer({
    super.key,
  });

  @override
  State<MyCustomDrawer> createState() => _MyCustomDrawerState();
}

class _MyCustomDrawerState extends State<MyCustomDrawer> {
  String whatsappUrl = 'https://wa.me/+201150028603';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(thickness: 1),
            const SizedBox(height: 20),
            const Text(
              "To Make An Order",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                goToWhatsapp();
              },
              child: const Text(
                "Just Call Us On 01150028603",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "You Can Pay Cash On Delivery,\n Or Online On The Same Number",
            ),
            const SizedBox(height: 50),
            const Text(
              "Bon appétit <3",
            ),
          ],
        ),
      ),
    );
  }

  goToWhatsapp() async {
    if (Platform.isAndroid) {
      launchUrl(Uri.parse(
          '$whatsappUrl?text= ${Uri.parse("Hello! \n I want to make an order!")}'));
    }
  }
}