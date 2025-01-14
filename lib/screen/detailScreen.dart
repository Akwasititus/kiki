import 'package:flutter/material.dart';

import '../utils/const.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen>
    with SingleTickerProviderStateMixin {
  bool isDetailButtonClicked = true;
  bool isUsageButtonClicked = false;

  String containerText = content;
  void updateText(String text) {
    setState(() {
      containerText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      //backgroundColor: kikuGradient,
      body: Container(
        decoration: kikuGradient(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: size * 0.25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/aban-medium.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Gye\nNyame",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  SizedBox(height: size * 0.005),
                  const Text(
                    "\"Except God\"",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.amber),
                  ),
                  SizedBox(height: size * 0.01),
                  const Text(
                    textAlign: TextAlign.start,
                    "It expresses the omnipotence \n and supremacy of God \n in all affairs.",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(height: size * 0.02),
                  Row(
                    children: [
                      Image.asset(
                        'assets/aban-medium.png',
                        height: 25,
                      ),
                      Image.asset(
                        'assets/aban-medium.png',
                        height: 25,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: size * 0.02),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            // margin: const EdgeInsets.symmetric(horizontal: 0),
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 180,
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isDetailButtonClicked = true;
                        isUsageButtonClicked = false;
                        updateText(content);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed) ||
                            isDetailButtonClicked) {
                          return Colors
                              .white; // Change the color when pressed or clicked
                        }
                        return Colors.amber; // Default color
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity,
                            50.0), // Set the height of the button here
                      ),
                    ),
                    child: const Text(
                      'Detail',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isUsageButtonClicked = true;
                        isDetailButtonClicked = false;
                        updateText(content1);
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.pressed) ||
                            isUsageButtonClicked) {
                          return Colors
                              .white; // Change the color when pressed or clicked
                        }
                        return Colors.amber; // Default color
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity,
                            50.0), // Set the height of the button here
                      ),
                    ),
                    child: const Text(
                      'Usage',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              // margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0), topRight: Radius.circular(25)),
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.start,
                    containerText,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// name 
// email
// contact us
// sign out
// about