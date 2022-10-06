import 'package:flutter/material.dart';

import 'login_screen.dart';

class DirectMessages extends StatelessWidget {
  const DirectMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
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
                              padding:
                                  EdgeInsets.only(top: 16, left: 16, right: 16),
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
                              padding:
                                  EdgeInsets.only(top: 16, left: 16, right: 16),
                              child: Text(
                                'VOICE CHANNELS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ),
                            ...["General", "support"].map((channel) => ListTile(
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
      ],
    );
  }
}
