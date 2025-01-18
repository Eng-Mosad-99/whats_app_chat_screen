import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.personImage,
    required this.messageTitle,
    this.textDirection,
  });
  final String personImage, messageTitle;
  final TextDirection? textDirection;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: textDirection ?? TextDirection.ltr,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            personImage,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              messageTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
