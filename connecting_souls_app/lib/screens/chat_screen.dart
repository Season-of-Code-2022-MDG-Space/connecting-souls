import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  final Map<String, dynamic> userMap;
  final String chatID;

  ChatScreen({Key? key, required this.chatID, required this.userMap})
      : super(key: key);

  final TextEditingController currentMessage = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Builder(
        builder: (context) => Scaffold(
              backgroundColor: const Color.fromARGB(500, 227, 227, 227),
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/list');
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                title: Text(userMap["code"]),
                backgroundColor: const Color.fromARGB(500, 80, 163, 72),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * (11.4 / 15),
                      width: size.width,
                      child: StreamBuilder<QuerySnapshot>(
                          stream: _firestore
                              .collection("chat-rooms")
                              .doc(chatID)
                              .collection("chats")
                              .orderBy("time", descending: false)
                              .snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot) {
                            if (snapshot.data != null) {
                              return ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  Map<String, dynamic> myMap =
                                      snapshot.data!.docs[index].data()
                                          as Map<String, dynamic>;
                                  return Container(
                                    alignment:
                                        myMap['sentBy'] == user.displayName
                                            ? Alignment.centerRight
                                            : Alignment.centerLeft,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.h, horizontal: 8.w),
                                        margin: EdgeInsets.symmetric(
                                            vertical: 5.h, horizontal: 12.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: myMap['sentBy'] ==
                                                  user.displayName
                                              ? const Color.fromARGB(
                                                  500, 151, 227, 154)
                                              : const Color.fromARGB(
                                                  500, 255, 255, 255),
                                        ),
                                        child: Text(
                                          myMap['text'],
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                          ),
                                        )),
                                  );
                                },
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.r),
                        color: const Color.fromARGB(500, 255, 255, 255),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: size.height / 17,
                              width: size.width / 1.3,
                              child: TextField(
                                controller: currentMessage,
                                decoration: InputDecoration(
                                  hintText: "Message",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.r),
                                      borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              500, 151, 227, 154),
                                          width: 1.0,
                                          style: BorderStyle.solid)),
                                ),
                              )),
                          IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () async {
                                if (currentMessage.text.isNotEmpty) {
                                  await _firestore
                                      .collection("chat-rooms")
                                      .doc(chatID)
                                      .collection('chats')
                                      .add({
                                    "sentBy": user.displayName,
                                    "text": currentMessage.text,
                                    "time": FieldValue.serverTimestamp(),
                                  });

                                  currentMessage.clear();
                                }
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
