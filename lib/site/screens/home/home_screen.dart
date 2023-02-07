import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blueAccent,
            height: 400,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple,
            height: 400,
          ),
        )
      ],
    );
  }
}
