// ignore_for_file: must_be_immutable

import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  bool? isActive;
   ProfileScreen({super.key,this.isActive});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isHome = false;
  bool isHistory = false;
  bool isUpdates = false;
  bool isProfile = false;

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/backgrounds/home_bg.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              height: sHeight * 0.5,
              child: Stack(
                children: [
                  Positioned(
                    // top: 1,
                    child: Container(
                      height: sHeight * 0.36,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/backgrounds/profile_card_bg.png'),
                            opacity: 0.2,
                            fit: BoxFit.cover),
                        color: Color.fromARGB(255, 34, 36, 34),
                      ),
                    ),
                  ),
                  Positioned(
                    left: sWidth * 0.34,
                    top: sHeight * 0.05,
                    child: Column(
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                            'assets/images/figma_icons/profile_image.png'), //fit: BoxFit.cover,height: 80,width: 80,),
                        const Text(
                          'Olivia Rhye',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const Text(
                          'Islamabad, Pakistan',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: sHeight * 0.3,
                    left: sWidth * 0.05,
                    child: Container(
                      height: sHeight * 0.18,
                      width: 350,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 244, 252, 227),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 5),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Text(
                                  'Current Level:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                    width: 300,
                                    child: Text(
                                      'After completing this task you will unlock this “Premium Badge” and earned “2000 points”',
                                      maxLines: 2,
                                    )),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                    'assets/images/figma_icons/star.png'),
                                const SizedBox(width: 10),
                                const Text(
                                  'Lv. 4',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                  width: Platform.isIOS ? sWidth * 0.55 : sWidth * 0.6,
                                  child: LinearPercentIndicator(
                                    animation: true,
                                    animationDuration: 1000,
                                    progressColor:
                                        const Color.fromARGB(255, 130, 201, 30),
                                    lineHeight: 8,
                                    barRadius: const Radius.circular(20),
                                    percent: 0.58,
                                  ),
                                ),
                                const Text(
                                  '58%',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: sWidth * 0.045),
              child: Row(
                children: [
                  Text(
                    'My Achievements',
                    style: TextStyle(
                      color:
                          const Color.fromARGB(255, 244, 252, 227).withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sWidth * 0.045),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: sWidth * 0.42,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 34, 36, 34),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Image.asset('assets/images/figma_icons/level_icon.png'),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Complete Levels',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: sWidth * 0.42,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 34, 36, 34),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/images/figma_icons/points_icon.png'),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Points',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              '236',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sWidth * 0.045),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 34, 36, 34),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/figma_icons/badge_1.png'),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/figma_icons/badge_2.png'),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/figma_icons/badge_3.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: sWidth * 0.045),
              child: Row(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      color:
                          const Color.fromARGB(255, 244, 252, 227).withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sWidth * 0.045),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 36, 34),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 244, 252, 227)
                                    .withOpacity(0.12),
                              ),
                              child: Image.asset(
                                'assets/images/figma_icons/account_settings_icon.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Account Settings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: sWidth * 0.35),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 1,
                      color: Colors.white.withOpacity(0.12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 244, 252, 227)
                                    .withOpacity(0.12),
                              ),
                              child: Image.asset(
                                'assets/images/figma_icons/gen_rep_icon.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Generate Report',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: sWidth * 0.35),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: sWidth * 0.045),
              child: Row(
                children: [
                  Text(
                    'Resources',
                    style: TextStyle(
                      color:
                          const Color.fromARGB(255, 244, 252, 227).withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sWidth * 0.05),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 36, 34),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 244, 252, 227)
                                    .withOpacity(0.12),
                              ),
                              child: Image.asset(
                                'assets/images/figma_icons/support_icon.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Support',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(width: sWidth * 0.35),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 1,
                      color: Colors.white.withOpacity(0.12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 244, 252, 227)
                                    .withOpacity(0.12),
                              ),
                              child: Image.asset(
                                'assets/images/figma_icons/share_icon.png',
                              ),
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 1,
                      color: Colors.white.withOpacity(0.12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 244, 252, 227)
                                .withOpacity(0.12),
                          ),
                          child: Image.asset(
                            'assets/images/figma_icons/download_icon.png',
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Version 1.2.1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    
  }
}
