import 'package:flutter/material.dart';

// parent concrete class for all child button in the setting page

class ChildWidget extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  // ignore: prefer_typing_uninitialized_variables
  final placeHolder;
  const ChildWidget(
      {Key? key, required this.onPressed, required this.placeHolder})
      : super(key: key);

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 40),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          decoration: const BoxDecoration(
            border: BorderDirectional(
              bottom: BorderSide(
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.placeHolder,
                style: const TextStyle(
                  fontSize: 17, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: widget.onPressed,
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                iconSize: 18,
                color: const Color.fromARGB(255, 172, 170, 170),
              ) // Adjust the icon size as needed
            ],
          ),
        ),
      ),
    );
  }
}
