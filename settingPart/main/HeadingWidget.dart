import 'package:flutter/material.dart';

// this widget will provide heading
// heading concrete class
class HeadingWidget extends StatefulWidget {
  final String headingName;
  final IconData iconData;
  const HeadingWidget(
      {super.key, required this.headingName, required this.iconData});

  @override
  State<HeadingWidget> createState() => _HeadingWidgetState();
}

class _HeadingWidgetState extends State<HeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.iconData,
          size: 38,
          color: Color.fromRGBO(0, 71, 133, 1),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          widget.headingName,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
