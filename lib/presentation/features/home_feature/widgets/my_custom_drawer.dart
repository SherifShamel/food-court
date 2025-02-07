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
              "عشان تعمل أوردر",
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
                "من خلال الوتساب 01150028603",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "تقدر تدفع كاش عند الاستلام\n  أو تحول لمحفظه علي رقم 01123275233",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              "Bon appétit <3",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  goToWhatsapp() async {
    if (Platform.isAndroid) {
      launchUrl(Uri.parse(
          '$whatsappUrl?text= ${Uri.parse("هاي! \n عايز أعمل أوردر!")}'));
    }
  }
}