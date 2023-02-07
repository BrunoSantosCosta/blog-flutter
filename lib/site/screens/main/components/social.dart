import 'package:blog/constants.dart';
import 'package:blog/site/screens/blog/blog_screen.dart';
import 'package:blog/site/screens/contact/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: ContactScreen(),
                isIos: true,
                duration: const Duration(milliseconds: 4),
              ),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xF12C69FF),
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding,
              )),
          child: Text(
            'Contact',
          ),
        )
      ],
    );
  }
}
