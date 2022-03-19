import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController currentMessage = TextEditingController();

    return Builder(
        builder: (context) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/list');
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                title: const Text('Name'),
                backgroundColor: const Color.fromARGB(500, 80, 163, 72),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * (12 / 15),
                      width: size.width,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height / 15,
                          width: size.width / 1.2,
                          child: TextField(
                            controller: currentMessage,
                            decoration: InputDecoration(
                                hintText: "Message",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                          ),
                        ),
                        IconButton(
                            icon: const Icon(Icons.send), onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
