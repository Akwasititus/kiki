import 'package:flutter/material.dart';

import '../../utils/const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Container(
        decoration: kikuGradient(),
        child: Column(children: [
          SizedBox(height: size * 0.2),
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
                    'assets/profile.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Pascal Nyame",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.amber),
                  ),
                  SizedBox(height: size * 0.005),
                  const Text(
                    "Graphic designer  inspired to create \n innovative content for future generations.",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(height: size * 0.01),
                ],
              )
            ],
          ),
          SizedBox(height: size * 0.1),
          const SingleChildScrollView(
            child: Column(
              children: [
                ProfileCard(
                  profileName: "Akwasi Pascal",
                  icon: Icons.person_2_rounded,
                ),
                ProfileCard(
                  profileName: "pascal@gmail.com",
                  icon: Icons.email,
                ),
                ProfileCard(
                  profileName: "Contact Us",
                  icon: Icons.contact_page,
                ),
                ProfileCard(
                  profileName: "About us",
                  icon: Icons.history,
                ),
                ProfileCard(
                  profileName: "Sign out",
                  icon: Icons.logout_outlined,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String profileName;
  final IconData icon;
  const ProfileCard({
    super.key,
    required this.profileName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
            child: Center(
          child: ListTile(
            title: Text(profileName),
            leading: Icon(icon),
          ),
        )),
      ),
    );
  }
}
