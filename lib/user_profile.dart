import 'package:flutter/material.dart';

// import 'package:wave/wave.dart';
// import 'package:wave/config.dart';
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
            children: [
              SizedBox(
                height: 15,
              ),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        foregroundImage: AssetImage('assets/images/munim.jpg'),
                      ),
                    ),
                  ),
                ),
              )),
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
                                radius: 15,
                                foregroundImage:
                                    AssetImage('assets/images/munim.jpg'),
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
