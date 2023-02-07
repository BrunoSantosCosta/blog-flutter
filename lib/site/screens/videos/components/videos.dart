import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double videosHeight = 200;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 5,
                  md: 4,
                  xs: 12,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/002-thumbnail.png',
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 7,
                  md: 8,
                  xs: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: videosHeight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.text,
                              child: Text(
                                'How to Make a Landing Page Website using HTML, CSS, and Javascript for beginners | Dark/Light Mode',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  height: 2,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const Flexible(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.text,
                              child: Text(
                                'In todays tutorial, you will learn how to make a complete responsive lading page website design by using HTML CSS and Vanilla JavaScript from scratch. I hope you will like this landing page website design. Feel free to download the source code of this responsive personal portfolio website from the given link',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 113, 113, 113),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  height: 2,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xF12C69FF),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 23),
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.8,
                              ),
                            ),
                            child: const Text('View More'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 5,
                  md: 4,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.purple,
                    child: const Text("lg : 12"),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 7,
                  md: 8,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.green,
                    child: const Text("xs : 6 \r\nsm : 3"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 5,
                  md: 4,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.purple,
                    child: const Text("lg : 12"),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 7,
                  md: 8,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.green,
                    child: const Text("xs : 6 \r\nsm : 3"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 5,
                  md: 4,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.purple,
                    child: const Text("image"),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 7,
                  md: 8,
                  child: Container(
                    height: 100,
                    alignment: const Alignment(0, 0),
                    color: Colors.green,
                    child: const Text("content"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
