import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List chats = [
      'chat 1',
      'chat 2',
      'chat 3',
      'chat 4',
      'chat 5',
      'chat 6',
      'chat 7',
      'chat 8'
    ];

    return Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(500, 80, 163, 72),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              title: const Text('Chat Screen'),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 6.0,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/requests');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(500, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Requests',
                      style: TextStyle(
                        color: Color.fromARGB(500, 80, 163, 72),
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: chats
                    .map((chat) => InkWell(
                          onTap: () {},
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/4.png',
                                    width: 45,
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    chat,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  const SizedBox(width: 185),
                                  const Text('12:00 am'),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )));
  }
}
