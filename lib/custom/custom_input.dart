import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String label;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType inputType;

  const CustomInput({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.controller,
    this.obscureText = false,
    this.inputType = TextInputType.text,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late bool _isObscure; // untuk kontrol tampilan teks

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText; // ambil nilai awal dari parameter
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscure,
        autocorrect: false,
        textInputAction: TextInputAction.next,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          hintText: widget.label,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure =
                          !_isObscure; // toggle tampil/simpan password
                    });
                  },
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
        border: InputBorder.none
        ),
      ),
    );
  }
}
