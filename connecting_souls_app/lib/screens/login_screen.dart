import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Drawer(
        child: CustomPaint(
          painter: AppBarPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 28.0,),
              const Text(
                'Connecting Souls',
                style: TextStyle(
                  fontSize: 34.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 30.0,),
              const Text(
                //' "The slogan comes here" ',
                  'This application is for IIT-R Junta to help\n '
                      'you connect to wellness center of IIT-R and\n'
                      ' your fellow mates and seniors \n'
                      '(anonymously) to prevent privacy issue \n'
                      'while sharing anything.',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(400, 11, 10, 10),
                  ),
                  textAlign: TextAlign.center
              ),
              const SizedBox(height: 9.0,),
              Image.asset(
                'assets/1.png',
                width: 283.0,
              ),
              SizedBox(
                width: 302.0,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(500, 151, 227, 154)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login with Google',
                        style: TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'Roboto',
                            color: Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(width: 7,),
                      Image.asset(
                        'assets/2.png',
                        width: 36.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint();
    paint.color = const Color.fromARGB(500, 151, 227, 154);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.54);
    path.quadraticBezierTo(size.width * 0.32, size.height * 0.65, size.width, size.height * 0.51);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
