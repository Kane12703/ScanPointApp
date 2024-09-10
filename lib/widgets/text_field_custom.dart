import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final Function(String val)? onChange;
  final String placeholder;
  final bool? isPassword;
  final String? forceErrorText;
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const TextFieldCustom(
      {super.key,
      this.controller,
      this.isPassword,
      this.keyboardType,
      this.forceErrorText,
      required this.label,
      required this.placeholder,
      this.onChange,
      this.validator});

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
            style: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        TextFormField(
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ?? false,
          onChanged: widget.onChange,
          forceErrorText: widget.forceErrorText,
          validator: widget.validator,
          decoration: InputDecoration(
              errorStyle: const TextStyle(fontSize: 10),
              hintText: widget.placeholder,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange[300]!,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )),
        ),
      ],
    );
  }
}
