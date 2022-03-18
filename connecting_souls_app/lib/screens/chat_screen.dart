import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name'),
        backgroundColor: const Color.fromARGB(450, 80, 163, 72),
      ),
      body: Container(),
      bottomNavigationBar:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TextField(
          decoration: InputDecoration(),
          ),
          Icon(
            Icons.send,
          ),
        ],
      ),

    );
  }
}
