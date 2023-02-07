import 'package:blog/site/screens/blog/blog_screen.dart';
import 'package:blog/site/screens/videos/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.05),
      color: const Color(0xffF6F6F6),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 12,
            lg: 4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo-with-text-black.png',
                    width: 150,
                    height: 75,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                      'Platform to help other programmers with solutions to everyday problems'),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            lg: 4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0,
                      wordSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
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
                    child: const Text('Blog'),
                  ),
                  const SizedBox(height: 13),
                  GestureDetector(
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
                    child: const Text('Videos'),
                  ),
                  const SizedBox(height: 13),
                  GestureDetector(
                    onTap: () {
                      _showAlertDialog(context);
                    },
                    child: const Text('Admin'),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            lg: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0,
                    wordSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 30),
                Text('Need help or have a question?'),
                SizedBox(height: 13),
                Text('Email: alppacacode@gmail.com')
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Cancel booking'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Are you sure want to cancel booking?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
