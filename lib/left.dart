import 'package:gpgc/data.dart';
import 'package:flutter/material.dart';
import 'package:gpgc/dm_home.dart';
import 'package:gpgc/home.dart';
import 'package:gpgc/login_screen.dart';

class LeftScreen extends StatefulWidget {
  const LeftScreen({super.key});

  @override
  State<LeftScreen> createState() => _LeftScreenState();
}

class _LeftScreenState extends State<LeftScreen> {
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
                    height: 70,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DmHome()));
                        },
                        icon: Icon(
                          Icons.messenger_rounded,
                          color: Colors.green,
                        )),
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
                                      child: Center(
                                    child: Text(
                                      "GPGC Hangouts",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_horiz))
                                ],
                              ),
                              const Text(
                                "success is approximately equal to past good",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Material(
                            color: Colors.white,
                            child: ListView(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 16, right: 16),
                                  child: Text(
                                    'TEXT CHANNELS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ),
                                ...["general", "resources", "standup"]
                                    .map((channel) => ListTile(
                                          leading: const Icon(Icons.tag),
                                          horizontalTitleGap: 0,
                                          title: Text(channel),
                                          onTap: () {
                                            LoginScreen();
                                          },
                                        )),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 16, left: 16, right: 16),
                                  child: Text(
                                    'VOICE CHANNELS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ),
                                ...["General", "support"]
                                    .map((channel) => ListTile(
                                          leading: const Icon(Icons.headphones),
                                          horizontalTitleGap: 0,
                                          title: Text(channel),
                                          onTap: () {},
                                        ))
                              ],
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
