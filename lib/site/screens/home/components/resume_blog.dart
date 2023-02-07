import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResumeBlog extends StatelessWidget {
  const ResumeBlog({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: SizedBox(
        child: Column(
          children: [
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 6,
                  xs: 12,
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.text,
                    child: Text(
                      'Latest News',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff0A1821),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 6,
                  xs: 12,
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.text,
                    child: Text(
                      'Platform to new for help other programmers with solutions to everyday problems',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff38454A),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  lg: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 118, 118, 118)
                                    .withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 9,
                                offset: const Offset(
                                    6, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              '/images/blog.png',
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 35),
                            Text(
                              'NOVEMBER 15, 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff38454A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                            Text(
                              'VS Code – Best Extensions to use 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                height: 2,
                              ),
                            ),
                            Text(
                              'In recent years, VS Code has been the darling of most developers. This popularity…',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                height: 1.2,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  lg: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 118, 118, 118)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        6, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset('/images/blog2.png'),
                              ),
                            ),
                            const SizedBox(height: 35),
                            const Text(
                              'NOVEMBER 15, 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff38454A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                            const Text(
                              'VS Code – Best Extensions to use 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                height: 2,
                              ),
                            ),
                            const Text(
                              'In recent years, VS Code has been the darling of most developers. This popularity…',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                height: 1.2,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  lg: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 118, 118, 118)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: const Offset(
                                        6, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset('/images/blog3.png'),
                              ),
                            ),
                            const SizedBox(height: 35),
                            const Text(
                              'NOVEMBER 15, 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff38454A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                            const Text(
                              'VS Code – Best Extensions to use 2022',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                height: 2,
                              ),
                            ),
                            const Text(
                              'In recent years, VS Code has been the darling of most developers. This popularity…',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                height: 1.2,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
