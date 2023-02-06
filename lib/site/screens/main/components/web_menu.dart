import 'package:blog/site/screens/blog/blog_screen.dart';
import 'package:blog/site/screens/main/main_screen.dart';
import 'package:blog/site/screens/videos/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../constants.dart';
import '../../../controllers/MenuController.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: MainScreen(),
                  isIos: true,
                  duration: const Duration(milliseconds: 4),
                ),
              );
            },
            child: AnimatedContainer(
              duration: kDefaultDuration,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: VideosScreen(),
                  isIos: true,
                  duration: const Duration(milliseconds: 4),
                ),
              );
            },
            child: AnimatedContainer(
              duration: kDefaultDuration,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: const Text(
                'Videos',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: BlogScreen(),
                  isIos: true,
                  duration: const Duration(milliseconds: 4),
                ),
              );
            },
            child: AnimatedContainer(
              duration: kDefaultDuration,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: const Text(
                'Blog',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
