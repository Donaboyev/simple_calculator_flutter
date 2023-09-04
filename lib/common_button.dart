import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const CommonButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(80, 60),
        backgroundColor: Colors.deepPurple,
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w600, fontSize: 26, color: Colors.white),
      ),
    );
  }
}
