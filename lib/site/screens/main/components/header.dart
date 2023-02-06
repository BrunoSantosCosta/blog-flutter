import 'package:blog/constants.dart';
import 'package:blog/site/controllers/MenuController.dart';
import 'package:blog/responsive.dart';
import 'package:blog/site/screens/blog/blog_screen.dart';
import 'package:blog/site/screens/main/components/social.dart';
import 'package:blog/site/screens/main/components/web_menu.dart';
import 'package:blog/site/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff1D2233),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
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
                                child: MainScreen(),
                                isIos: true,
                                duration: const Duration(milliseconds: 4),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/logo-with-text-white.png',
                            height: 85,
                          ),
                        ),
                      ),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      const Spacer(),
                      const Social(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
