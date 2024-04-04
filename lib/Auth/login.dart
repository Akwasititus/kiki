import 'package:flutter/material.dart';

import 'signUp.dart';
import 'textfieldwidgets.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                    margin: const EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size * 0.08, vertical: size * 0.1),
                        child: Column(
                          children: [
                            //SizedBox(height: size * 0.05),
                            const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF680179),
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Lobster"),
                            ),
                            const Text(
                              "Sign in to your Account",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Lobster"),
                            ),
                            SizedBox(height: size * 0.03),

                            const TextfieldWidget(
                              hitTextName: 'Username',
                              surfixIcon: Icons.person,
                            ),
                            const TextfieldWidget(
                              hitTextName: 'Password',
                              surfixIcon: Icons.key_rounded,
                              obscureText: true,
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Forget password ?",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF680179),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    height: 50,
                                    width: 150,
                                    child: const Center(
                                        child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: size * 0.1),

                            const Text(
                              "Skip Login",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                            SizedBox(height: size * 0.05),

                            const Divider(
                              thickness: 2,
                              color: Color(0xFF680179),
                            ),
                            SizedBox(height: size * 0.01),
                            const Text(
                              "Sign in with Social Instead.....",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            SizedBox(height: size * 0.01),
                            const Divider(
                              thickness: 2,
                              color: Color(0xFF680179),
                            ),

                            SizedBox(height: size * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/apple.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset("assets/facebook.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset("assets/google.png")
                              ],
                            ),
                            SizedBox(height: size * 0.05),

                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()),
                                  );
                                },
                                child: const Text("I want to Sign Up!")),
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
