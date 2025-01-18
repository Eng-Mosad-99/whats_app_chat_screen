import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/person.jpg',
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'Person',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
