import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String categoryName;
  const CategoryWidget({required this.categoryName, Key? key})
      : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tapped = !tapped;
        setState(() {});
        print(widget.categoryName);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: tapped ? Colors.grey : Colors.black,
        ),
        child: Center(
          child: Text(widget.categoryName),
        ),
      ),
    );
  }
}
