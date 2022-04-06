// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 221, 199, 224),
//         body: Center(
//           child: Align(
//               alignment: Alignment.center,
//               child: Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             // offset: Offset(4, 8),
//                             color: Color.fromARGB(255, 159, 137, 161),
//                             blurRadius: 8,
//                             // Shadow position
//                           ),
//                         ],
//                         color: Color.fromARGB(255, 248, 248, 246),
//                         borderRadius: BorderRadius.all(Radius.circular(20))),
//                     margin: EdgeInsets.all(30),
//                     //color: Colors.amber,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             border: UnderlineInputBorder(),
//                             labelText: 'username',
//                           ),
//                         ),
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             border: UnderlineInputBorder(),
//                             labelText: 'password',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailId = '';
  String password = '';
  final roundedBtn = ElevatedButton.styleFrom(
    primary: Colors.lightBlue,
    onPrimary: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
  );
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isKeyBoard = MediaQuery.of(context).viewInsets.bottom != 0;
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFF0F202D),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (!isKeyBoard)
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Image.asset(
                    "images/arrpng.png",
                    height: 200,
                  ),
                ),
              SizedBox(
                height: _height * 0.65,
                width: _width,
                child: CustomPaint(
                  painter: LoginFormPainter(iskeyBoardOn: isKeyBoard),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: isKeyBoard ? 16 : 32,
                      horizontal: 32,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "LOGIN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 30),
                          _fieldName('UserName'),
                          const SizedBox(height: 15),
                          LoginPageTextField(
                            name: "email Id",
                            width: _width,
                            //validator: AuthApi.validateEmail,
                            onchanged: (str) {
                              emailId = str;
                            },
                            keyBoardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          _fieldName('Password'),
                          const SizedBox(height: 15),
                          LoginPageTextField(
                            name: "password",
                            width: _width,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your password';
                              } else if (value.length < 6) {
                                return 'Password should have atleast 6 digits';
                              }
                              return null;
                            },
                            onchanged: (str) {
                              password = str;
                            },
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Forget password?",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: roundedBtn,
                              onPressed: () {},
                              child: Text("LOGIN"),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have a account"),
                              SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "SignUp",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/Register");
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Align _fieldName(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    );
  }
}

class LoginPageTextField extends StatelessWidget {
  final String name;
  final double? width;
  final Function(String)? onchanged;
  final obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyBoardType;
  LoginPageTextField({
    Key? key,
    required this.name,
    required this.onchanged,
    this.width,
    this.validator,
    this.obscureText = false,
    this.keyBoardType,
  }) : super(key: key);
//
//
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          hintText: name,
          hintStyle: TextStyle(color: Colors.white54),
        ),
        onChanged: onchanged,
        keyboardType: keyBoardType,
      ),
    );
  }
}

class LoginFormPainter extends CustomPainter {
  final bool iskeyBoardOn;
  final bool login;
  LoginFormPainter({
    required this.iskeyBoardOn,
    this.login = true,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color(0xFF06334B)
      ..style = PaintingStyle.fill;
    if (login) {
      if (iskeyBoardOn) {
        canvas.drawRect(
          Rect.fromPoints(
            Offset(0, 0),
            Offset(size.width, size.height),
          ),
          paint,
        );
      } else {
        final Path path = Path();
        path.moveTo(0, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width, size.height * 0.1),
          radius: Radius.circular(size.height),
        );
        path.lineTo(size.width, size.height);
        path.lineTo(0, size.height);
        path.lineTo(0, size.height * 0.1);
        canvas.drawPath(path, paint);
      }
    } else {
      final Path path = Path();
      // path.moveTo(0, size.height * 0.1);
      path.moveTo(0, 50);
      path.arcToPoint(
        // Offset(size.width, size.height * 0.3),
        // radius: Radius.circular(size.height),
        Offset(size.width, 140),
        radius: Radius.circular(500),
      );
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, size.height * 0.1);
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
