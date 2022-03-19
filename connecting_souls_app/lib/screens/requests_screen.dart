import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List requests = [
      'person 1',
      'person 2',
      'person 3',
      'person 4',
      'person 5',
      'person 6'
    ];
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
              title: const Text('Requests'),
              centerTitle: true,
              backgroundColor: const Color.fromARGB(500, 80, 163, 72),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: requests
                    .map(
                      (request) => Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  request + ' is requesting to talk to you',
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: const Text('Accept'),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Color.fromARGB(
                                                  500, 151, 227, 154),
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  500, 151, 227, 154)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      )),
                                    ),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: const Text('Decline'),
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Color.fromARGB(
                                                  500, 151, 227, 154),
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  500, 151, 227, 154)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )));
  }
}
