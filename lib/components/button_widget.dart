import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.label,
    required this.press,
  }) : super(key: key);

  final String label;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(maxWidth * 0.3, maxHeight * 0.05)
      ),
      onPressed: press,
      child: Text(
        label,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
