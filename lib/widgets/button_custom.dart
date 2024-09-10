import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const ButtonCustom({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[300],
          maximumSize: const Size(double.infinity, 50),
          minimumSize: const Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
