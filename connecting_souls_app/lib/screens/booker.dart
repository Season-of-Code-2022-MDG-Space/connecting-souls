
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';


class booker extends StatefulWidget {
  const booker({Key? key}) : super(key: key);

  @override
  State<booker> createState() => _bookerState();
}

class _bookerState extends State<booker> {
  String dropdownValue =
      '        Chose a mode of counselling                       ';


  final databaseRef = FirebaseDatabase.instance.reference();
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  void addData(String data ) {



    databaseRef.push().set({'mode': data,'comment': 'hi'});
  }



  @override
  Widget build(BuildContext context) {
    String counsellor;

    return Drawer(
        child: CustomPaint(
            painter: AppBarPainter(),
            child: Column(children: [
              SizedBox(
                height: 55.h,
              ),
              Row(children: [
                SizedBox(
                  width: 48.w,
                ),
                Text(
                  'Book Your\n Appointment',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.asset(
                  'assets/11.png',
                  width: 48.w,
                  height: 48.h,
                ),
              ]),
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
                height: 20.h,
              ),
              Row(children: [
                TextButton(
                    onPressed: () => {
                       counsellor = "Dr Shikha Jain"
                    },
                    child: SizedBox(
                        width: 99.w,
                        height: 135.h,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green, // red as border color
                              ),
                            ),
                            child: Column(children: <Widget>[
                              Image.asset(
                                'assets/page1.png',
                                width: 85.w,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'Dr Shikha Jin',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])))),
                TextButton(
                    onPressed: () => {
                      counsellor = 'Mr Ashfek Ahmed Pc'
                    },
                    child: SizedBox(
                        width: 99.w,
                        height: 135.h,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green, // red as border color
                              ),
                            ),
                            child: Column(children: <Widget>[
                              Image.asset(
                                'assets/page2.png',
                                width: 85.w,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Mr.Ashfak Ahmad PC',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])))),
                TextButton(
                    onPressed: () => {
                      counsellor = 'Mr.Mohit Cnandra'
                    },
                    child: SizedBox(
                        width: 99.w,
                        height: 135.h,
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green, // red as border color
                              ),
                            ),
                            child: Column(children: <Widget>[
                              Image.asset(
                                'assets/page3.png',
                                width: 85.w,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Mr Mohit Chandra',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])))),
              ]),
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
                          'In person',
                          'via call',
                          'via Text'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ))),
              SizedBox(
                height: 15.h,
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      border: Border.all(
                        color: Colors.green, // red as border color
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'dd-mm-yy',
                      ),
                    ),
                  )),
              SizedBox(
                height: 15.h,
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
                height: 70.h,
              ),

              SizedBox(
                  height: 40.h,
                  width: 194.w,
                  child: TextButton(
                      onPressed:() {

                        addData(dropdownValue);
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
