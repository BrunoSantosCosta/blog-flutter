import 'package:blog/site/components/footer.dart';
import 'package:blog/constants.dart';
import 'package:blog/site/controllers/MenuController.dart';
import 'package:blog/site/screens/contact/components/form.dart';
import 'package:blog/site/screens/contact/components/questions.dart';
import 'package:blog/site/screens/home/components/resume_blog.dart';
import 'package:blog/site/screens/main/components/header.dart';
import 'package:blog/site/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(controller: _controller),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Column(
              children: [
                FormContact(),
                const Questions(),
                const ResumeBlog(),
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;
  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      selected: isActive,
      selectedTileColor: kPrimaryColor,
      onTap: press,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
