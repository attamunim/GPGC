import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpgc/home.dart';
import 'package:gpgc/main.dart';
import 'package:provider/provider.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Offset footerOffset = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('UserProfile'),
            ],
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
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
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
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.black45,
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: GestureDetector(
                              onTap: (() {}),
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
          ),
        ],
      ),
    );
  }
}
