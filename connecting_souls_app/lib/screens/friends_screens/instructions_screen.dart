import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            foregroundColor: const Color.fromARGB(450, 23, 22, 22),
            backgroundColor: const Color.fromARGB(500, 151, 227, 154),
            title: (Text(
              'Instructions',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ))),
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            '1. Using our service, your identity will remain completely anonymous.\n'
            '2. In case you feel comfortable talking to the other person, you can share your contact details at your own risk.\n'
            '3. You can share your identity with the other person (giving a valid proof of the same) by mutual consent of both the persons.\n'
            '4. You are responsible for any activity that occurs under your screen name.\n'
            '5. You must not harass, abuse, threaten, impersonate or intimate other users.\n'
            '6.  are solely responsible for your conduct and any data, text, information that you send to other users.\n'
            '7. You must be polite to other users while talking.\n'
            '8. You must talk to others patiently and listen to others also.\n'
            '9. Any type of bullying or use of vulgar language is prohibited.\n'
            '10. Repeatedly sending abusive messages may lead you to termination of use of service.\n',
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            'assets/9.png',
            width: 400.w,
            height: 6.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
              height: 48.h,
              width: 264.w,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(500, 151, 227, 154)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                    ),
                  ),
                  child: Text(
                    'Accept and Continue',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromARGB(450, 23, 22, 22),
                        fontWeight: FontWeight.bold),
                  )))
        ])));
  }
}
