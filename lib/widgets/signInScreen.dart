import 'package:flutter/material.dart';

import 'loaderAnimation.dart';

class SignInScreen extends StatefulWidget {
  Function signIn;

  SignInScreen({required this.signIn});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  final Color blueTextColor = Color(0xFF4F4E73);
  late TextEditingController emailController;
  late TextEditingController passController;
  bool signUpPressed = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passController = TextEditingController();

    controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.signIn();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 60.0),
                      child: Row(
                        children: [
                          //Expanded(child: Container()),
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w100),
                          ),
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: blueTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Welcome back!',
                        style: TextStyle(
                          color: blueTextColor,
                          fontSize: 34.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Sign in to your Nomad account using your work email address and your secure password. Forgotten it? ',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.w100,
                            height: 1.5,
                            letterSpacing: 1.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'RESET PASSWORD',
                              style: TextStyle(color: blueTextColor, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 65.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: 'Email',
                        ),
                        enableSuggestions: false,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        controller: passController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            signUpPressed = true;
                          });

                          controller.forward();
                        });
                      },
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15.0, 80.0, 15.0, 15.0),
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFF3F3CAE),
                          ),
                          width: double.infinity,
                          height: 50,
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 2,
              left: MediaQuery.of(context).size.width / 2,
              child: AnimatedBuilder(
                animation: controller,
                builder: (BuildContext context, _) {
                  return signUpPressed
                      ? CustomPaint(
                          painter: TestPainter(context: context, controller: controller),
                        )
                      : Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
