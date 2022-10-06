import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gpgc/user_profile.dart';
import 'package:gpgc/left.dart';
import 'package:gpgc/login_screen.dart';
import 'package:gpgc/main_screen.dart';
import 'package:gpgc/righ.dart';
import 'package:gpgc/welcome.dart';
import 'package:overlapping_panels/overlapping_panels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 2;
  final autoSizeGroup = AutoSizeGroup();
  //default index of a first screen
  Offset footerOffset = const Offset(0, 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OverlappingPanels(
          left: Builder(builder: (context) {
            return const LeftScreen();
          }),
          right: Builder(
            builder: (context) => const RightScreen(),
          ),
          main: Builder(
            builder: (context) {
              return const MainScreen();
            },
          ),
          onSideChange: (side) {
            setState(() {
              if (side == RevealSide.main) {
                footerOffset = const Offset(0, 1);
              } else if (side == RevealSide.left) {
                footerOffset = const Offset(0, 0);
              }
            });
          },
        ),
        Align(
          // ignore: sort_child_properties_last
          child: AnimatedSlide(
            duration: const Duration(milliseconds: 160),
            offset: footerOffset,
            child: SizedBox(
              height: 50,
              child: Material(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (a == 2) {
                              OverlappingPanels.of(context)
                                  ?.reveal(RevealSide.main);
                            } else {
                              OverlappingPanels.of(context)
                                  ?.reveal(RevealSide.left);
                            }
                          },
                          icon: const Icon(
                            Icons.home,
                            color: Colors.black45,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.people_alt_rounded,
                            color: Colors.black45,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black45,
                            size: 25,
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(
                        //     Icons.notifications,
                        //     color: Colors.black45,
                        //     size: 25,
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserProfile()));
                            }),
                            child: const CircleAvatar(
                              radius: 16,
                              foregroundImage:
                                  AssetImage('assets/images/GPGC2.gif'),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          alignment: Alignment.bottomCenter,
        )
      ],
    );
  }
}
