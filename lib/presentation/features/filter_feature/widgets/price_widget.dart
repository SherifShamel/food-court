import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      decoration: const BoxDecoration(
        // color: Colors.grey,
      ),
      child: const Center(child: Text("💲")),
    );
  }
}
