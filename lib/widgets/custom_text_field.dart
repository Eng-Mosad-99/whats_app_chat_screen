import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        hintText: 'Type a message',
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.emoji_emotions_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.attach_file,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
