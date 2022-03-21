
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';
import 'package:provider/provider.dart';

import '../utils/authentication.dart';


class booker extends StatefulWidget {
  const booker({Key? key}) : super(key: key);


  @override
  State<booker> createState() => _bookerState();
}

class _bookerState extends State<booker> {
  String dropdownValue =
      '        Chose a mode of counselling                       ';
  String time =
      '           Chose Time                                                 ';
  String counsellor1 =
      '        Chose your Counsellor                                   ';



  final textcontroller = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.reference();
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  void addData(String data1,String data , String data2 , String data3 , String data4 ) {



    databaseRef.push().set({'email':data1,'counsellor': data3,'date': data,'mode': data2,'time': data4});
  }



  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold( appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: const Icon(Icons.arrow_back),
        ),

        foregroundColor: const Color.fromARGB(450, 23, 22, 22),
        backgroundColor: const Color.fromARGB(500, 151, 227, 154),

        title:( Text(
          'Book Your Appointment',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold

          ),
        ))),


        body: Center(child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Chose your counsellor',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                  width: 325.w,
                  height: 44.h,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        border: Border.all(
                          color: Colors.green, // red as border color
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: counsellor1,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            counsellor1 = newValue!;
                          });
                        },
                        items: <String>[
                          '        Chose your Counsellor                                   ',
                          'Dr. Shikha Jain',
                          'Mr. Ashfak Ahamed PC',
                          'Mr. Mohit Chandr'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ))),

              SizedBox(
                height: 20.h,
              ),
              Text(
                'Mode of Counselling',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                  width: 325.w,
                  height: 44.h,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        border: Border.all(
                          color: Colors.green, // red as border color
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          '        Chose a mode of counselling                       ',
                          'Face-to-Face',
                          'Online',
                          'Telephonic'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ))),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Chose date',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                  height: 44.h,
                  width: 325.w,
                child:  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      border: Border.all(
                        color: Colors.green, // red as border color
                      ),
                    ),

                      child: TextField(
                      controller: textcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    dd-mm-yy',
                      ),
                    )),



                  ),

              SizedBox(
                height: 20.h,
              ),
              Text(
                'Chose Time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                  width: 325.w,
                  height: 44.h,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        border: Border.all(
                          color: Colors.green, // red as border color
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: time,

                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            time = newValue!;
                          });
                        },
                        items: <String>[
                          '           Chose Time                                                 ',
                          '9 A.M.',
                          '10 A.M.',
                          '12 P.M.',
                          '2 P.M.',
                          '3 P.M.',
                          '4 P.M.'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ))),
              SizedBox(
                height: 30.h,
              ),


              SizedBox(
                  height: 40.h,
                  width: 194.w,
                  child: TextButton(
                      onPressed:()  {


                        addData(user.email.toString(),counsellor1,textcontroller.text,dropdownValue,time,);
                        Navigator.pushReplacementNamed(context, '/success');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(500, 151, 227, 154)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.w),
                          ),
                        ),
                      ),
                      child: Text(
                        'Book Appointment',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Roboto',
                            color: const Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.bold),
                      )))
            ])));
  }
}
