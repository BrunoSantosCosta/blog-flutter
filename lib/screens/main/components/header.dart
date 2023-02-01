import 'package:blog/constants.dart';
import 'package:blog/controllers/MenuController.dart';
import 'package:blog/responsive.dart';
import 'package:blog/screens/main/components/social.dart';
import 'package:blog/screens/main/components/web_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: kDarkBlackColor,
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
                      SvgPicture.asset('assets/icons/logo.svg'),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      const Spacer(),
                      const Social(),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  const Text(
                    'Welcome to Our Blog',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      'Stay updated with newest design and development stores, case studies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          height: 1.5),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Learn More',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: kDefaultPadding),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
