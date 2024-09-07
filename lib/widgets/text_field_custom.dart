import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final Function(String val)? onChange;
  final String placeholder;
  final bool? isPassword;
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const TextFieldCustom({
    super.key,
    this.controller,
    this.isPassword,
    this.keyboardType,
    required this.label,
    required this.placeholder,
    this.onChange,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.label,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
        TextFormField(
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ?? false,
          onChanged: widget.onChange,
          decoration: InputDecoration(
              hintText: widget.placeholder,
              border: const OutlineInputBorder(),
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
