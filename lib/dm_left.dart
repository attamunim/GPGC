import 'package:gpgc/data.dart';
import 'package:flutter/material.dart';
import 'package:gpgc/dm_home.dart';
import 'package:gpgc/home.dart';

class DmLeftScreen extends StatefulWidget {
  const DmLeftScreen({super.key});

  @override
  State<DmLeftScreen> createState() => _DmLeftScreenState();
}

class _DmLeftScreenState extends State<DmLeftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border(
            right: BorderSide(color: Colors.black12),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: IconButton(
                        highlightColor: Colors.blue,
                        hoverColor: Colors.blue,
                        focusColor: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DmHome()));
                        },
                        icon: Icon(
                          Icons.messenger_rounded,
                          color: Colors.grey,
                        )),
                    // child: GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => HomeScreen()));
                    //   },
                    //   child: CircleAvatar(
                    //     backgroundColor: Colors.white,
                    //     radius: 25,
                    //     foregroundImage: AssetImage('assets/images/GPGC2.gif'),
                    //   ),
                    // ),
                  ),
                  Expanded(
                    flex: 10,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView(
                          children: servers
                              .map((server) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 4),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()));
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 25,
                                        foregroundImage: AssetImage(
                                            'assets/images/GPGC1.gif'),
                                      ),
                                    ),
                                  ))
                              .toList()),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SafeArea(
                left: true,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.grey[100]!),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                    "Direct Messages",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.message_outlined))
                                ],
                              ),
                              TextField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  suffixIcon: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Icon(Icons.search_rounded),
                                    width: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey[100],
                            child: Material(
                              child: ListView(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 16, left: 16, right: 16),
                                    child: Text(
                                      'Friends',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  ...users.map((user) => ListTile(
                                        leading: CircleAvatar(
                                            radius: 15,
                                            foregroundImage: AssetImage(
                                              user["avatar"]!,
                                            )),
                                        horizontalTitleGap: 0,
                                        title: Text(user["name"]!),
                                        onTap: () {},
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
