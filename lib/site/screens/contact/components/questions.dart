import 'package:blog/site/screens/contact/components/accordion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xffF6F6F6),
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 6,
            xs: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Frequently Asked Questions',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff22c69ff),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 27),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                      ),
                    ),
                    child: const Text('SEND MESSAGE'),
                  ),
                ),
              ],
            ),
          ),
          ResponsiveGridCol(
            lg: 6,
            xs: 12,
            child: Column(
              children: const [
                Accordion(
                  title: 'what does alppacacode do',
                  content:
                      'Assists programmers with day-to-day problem solving',
                ),
                Accordion(
                    title: 'What technologies are you experts in?',
                    content:
                        'We share everything related to the programming area in general'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
