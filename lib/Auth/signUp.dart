import 'package:flutter/material.dart';
import 'login.dart';
import 'textfieldwidgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/splashScreen.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: size * 0.15),
                child: Column(
                  children: [
                    Image.asset("assets/logo.png"),
                    SizedBox(height: size * 0.05),
                    Text(
                      "Welcome to Kiki",
                      style: TextStyle(
                        fontSize: size * 0.04,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFC700),
                      ),
                    ),
                    Text(
                      "The Ultimate Symbols Library!",
                      style: TextStyle(
                        fontSize: size * 0.05,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(0))),
                    margin: EdgeInsets.only(top: size * 0.05),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size * 0.08, vertical: size * 0.1),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: size * 0.05,
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Lobster"),
                              ),
                            ),
                            SizedBox(height: size * 0.05),
                            const TextfieldWidget(
                              hitTextName: 'Email',
                              surfixIcon: Icons.person,
                            ),
                            const TextfieldWidget(
                              hitTextName: 'Password',
                              surfixIcon: Icons.key_rounded,
                              obscureText: true,
                            ),
                            const TextfieldWidget(
                              hitTextName: 'Confirm password',
                              surfixIcon: Icons.key_rounded,
                              obscureText: true,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // const Text(
                                    //   "Forget password?",
                                    //   style: TextStyle(
                                    //       fontSize: 15,
                                    //       color: Colors.black,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                    const SizedBox(),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF680179),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                      height: size * 0.09,
                                      width: size * 0.3,
                                      child: const Center(
                                          child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                                SizedBox(height: size * 0.30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Image.asset("assets/google.png")],
                                ),
                                SizedBox(height: size * 0.03),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()),
                                      );
                                    },
                                    child: const Text("I want to Sign Up!")),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
