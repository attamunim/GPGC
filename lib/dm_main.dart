import 'package:flutter/material.dart';
import 'package:gpgc/data.dart';
import 'package:overlapping_panels/overlapping_panels.dart';

class DmMainScreen extends StatefulWidget {
  const DmMainScreen({super.key});

  @override
  State<DmMainScreen> createState() => _DmMainScreenState();
}

class _DmMainScreenState extends State<DmMainScreen> {
  int a = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: const [
                  Text(
                    "@ ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Shoaib ✔',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ]),
                const Text(
                  '✔ Playing vs code',
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                )
              ],
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            OverlappingPanels.of(context)?.reveal(RevealSide.left);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.black,
            ),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.right);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.right);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.group,
              color: Colors.black,
            ),
            onPressed: () {
              OverlappingPanels.of(context)?.reveal(RevealSide.right);
            },
          )
        ],
      ),
      body: ListView(
        children: [...chat, ...pm]
            .map((chatEntry) => ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  leading: CircleAvatar(
                    foregroundImage: AssetImage(chatEntry['user']['avatar']),
                  ),
                  title: Row(
                    children: [
                      Text(
                        chatEntry['user']['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        chatEntry["time"],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                  subtitle: Text(
                    chatEntry['message'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  onTap: () {},
                  onLongPress: () {},
                ))
            .toList(),
      ),
    );
  }
}
