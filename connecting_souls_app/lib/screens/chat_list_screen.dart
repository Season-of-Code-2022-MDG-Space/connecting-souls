import 'package:flutter/material.dart';
import 'package:connecting_souls_app/utils/chat_id_generator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:connecting_souls_app/screens/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  Map<String, dynamic>? userMap;
  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(500, 80, 163, 72),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              title: const Text('Chat Screen'),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 6.w,
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
                          borderRadius: BorderRadius.circular(10.r),
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
                child: StreamBuilder<QuerySnapshot>(
                    stream: _firestore
                        .collection('users')
                        .where('email', isNotEqualTo: user.email)
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.data != null) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> myUserMap =
                                  snapshot.data!.docs[index].data()
                                      as Map<String, dynamic>;
                              return InkWell(
                                onTap: () async {
                                  await _firestore
                                      .collection('users')
                                      .where("email",
                                          isEqualTo: myUserMap["email"])
                                      .get()
                                      .then((value) {
                                    setState(() {
                                      userMap = value.docs[0].data();
                                    });
                                  });
                                  String thisChatId = chatID(
                                      user.email.toString(), userMap!['email']);
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => ChatScreen(
                                        chatID: thisChatId,
                                        userMap: userMap!,
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.h, horizontal: 8.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/4.png',
                                          width: 45.w,
                                        ),
                                        SizedBox(
                                          width: 280.w,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  myUserMap['code'],
                                                  style: TextStyle(
                                                    fontSize: 23.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'Last message',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Text('12:00am'),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      } else {
                        return const Text('Error');
                      }
                    }))));
  }
}
