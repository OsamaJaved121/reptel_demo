// ignore_for_file: must_be_immutable

// import 'dart:ui_web';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:reptel_demo/UI/mission_detail_screen/mission_details_screen.dart';
import 'package:reptel_demo/UI/profile_screen/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool allF = false;
  bool nearestF = false;
  bool urgentF = false;
  bool isHome = true;
  bool isHistory = false;
  bool isUpdates = false;
  bool isProfile = false;
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        height: Platform.isIOS ? 80 : 60,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 34, 36, 34),
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage('assets/images/backgrounds/nav_bar_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 10,
              left: Platform.isIOS ? 22 : 8,
              right: Platform.isIOS ? 22 : 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  if (isHome == true) {
                  } else {
                    setState(() {
                      isHistory = false;
                      isProfile = false;
                      isUpdates = false;
                      isHome = true;
                    });
                  }
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/figma_icons/home.png',
                      color: isHome
                          ? const Color.fromARGB(255, 130, 201, 1)
                          : Colors.white,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: isHome
                            ? const Color.fromARGB(255, 130, 201, 1)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (isHistory == true) {
                  } else {
                    setState(() {
                      isHome = false;
                      isProfile = false;
                      isUpdates = false;
                      isHistory = true;
                    });
                  }
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/figma_icons/Vector.png',
                      color: isHistory
                          ? const Color.fromARGB(255, 130, 201, 1)
                          : Colors.white,
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                        color: isHistory
                            ? const Color.fromARGB(255, 130, 201, 1)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (isUpdates == true) {
                  } else {
                    setState(() {
                      isHome = false;
                      isProfile = false;
                      isHistory = false;
                      isUpdates = true;
                    });
                  }
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/figma_icons/Vector 2.png',
                      color: isUpdates
                          ? const Color.fromARGB(255, 130, 201, 1)
                          : Colors.white,
                    ),
                    Text(
                      'Updates',
                      style: TextStyle(
                        color: isUpdates
                            ? const Color.fromARGB(255, 130, 201, 1)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (isProfile == true) {
                  } else {
                    setState(() {
                      isHistory = false;
                      isHome = false;
                      isUpdates = false;
                      isProfile = true;
                    });
                  }
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => ProfileScreen(
                  //           isActive: true,
                  //         )));
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/figma_icons/Vector 3.png',
                      color: isProfile
                          ? const Color.fromARGB(255, 130, 201, 1)
                          : Colors.white,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: isProfile
                            ? const Color.fromARGB(255, 130, 201, 1)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: isProfile
          ? ProfileScreen()
          : Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: const AssetImage(
                  'assets/images/backgrounds/home_bg.jpeg',
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 65),
                    Row(
                      children: [
                        Image.asset('assets/images/figma_icons/Pop-out.png'),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olivia Rhye',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            // SizedBox(height: 5),
                            Text(
                              'Islamabad, Pakistan',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: sWidth * 0.25),
                        Container(
                          height: 23,
                          width: 70,
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[850],
                            // shape: BoxShape.circle,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 15,
                                width: 15,
                                child: Image.asset(
                                  'assets/images/figma_icons/Group.png',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '235',
                                style: TextStyle(color: Colors.green[400]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Select Your Mission',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey[800]!,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white60,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 244, 252, 227),
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(24)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: allF == true
                                    ? const Color.fromARGB(255, 244, 252, 227)
                                    : Colors.transparent,
                                padding: EdgeInsets.zero),
                            onPressed: () {
                              if (allF == false) {
                                setState(() {
                                  allF = true;
                                  nearestF = false;
                                  urgentF = false;
                                });
                              } else {
                                setState(() {
                                  allF = false;
                                });
                              }
                            },
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: allF == true
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 75,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 244, 252, 227)),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(24)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: nearestF == true
                                    ? const Color.fromARGB(255, 244, 252, 227)
                                    : Colors.transparent,
                                padding: EdgeInsets.zero),
                            onPressed: () {
                              if (nearestF == false) {
                                setState(() {
                                  nearestF = true;
                                  allF = false;
                                  urgentF = false;
                                });
                              } else {
                                setState(() {
                                  nearestF = false;
                                });
                              }
                            },
                            child: Text(
                              'Nearest',
                              style: TextStyle(
                                color: nearestF == true
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 70,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 244, 252, 227)),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(24)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: urgentF == true
                                    ? const Color.fromARGB(255, 244, 252, 227)
                                    : Colors.transparent,
                                padding: EdgeInsets.zero),
                            onPressed: () {
                              if (urgentF == false) {
                                setState(() {
                                  urgentF = true;
                                  allF = false;
                                  nearestF = false;
                                });
                              } else {
                                setState(() {
                                  urgentF = false;
                                });
                              }
                            },
                            child: Text(
                              'Urgent',
                              style: TextStyle(
                                color: urgentF == true
                                    ? Colors.black
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.zero,
                      height: sHeight * 0.6,
                      width: sHeight,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(child: TransparentTile(i: index)),
                              const SizedBox(height: 25),
                            ],
                          );
                        },
                      ),
                    ),
                    // const SizedBox(width: 300, child: TransparentTile()),
                    // const SizedBox(height: 25),
                    // const SizedBox(width: 300, child: TransparentTile()),
                    // Center(
                    //   child: TextButton(
                    //       onPressed: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => const MissionDetails(),
                    //           ),
                    //         );
                    //       },
                    //       child: const Text('Welcome')),
                    //),
                  ],
                ),
              ),
            ),
    );
  }
}

class TransparentTile extends StatelessWidget {
  int? i;
  TransparentTile({super.key, this.i});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MissionDetails(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/backgrounds/Layer 1.png'),
              fit: BoxFit.cover,
              opacity: 0.2),
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            colors: [
              // Colors.green.withOpacity(0.2), // Adjust opacity here
              const Color.fromARGB(255, 12, 13, 10).withOpacity(0.5),
              i != null && i! % 2 != 0
                  ? const Color.fromARGB(255, 45, 73, 16)
                  : const Color.fromARGB(255, 87, 29, 118),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "2km away",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Emergency Room\nAssessment",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Assessment security protocols in ER room area",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(65, 244, 252, 227)),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Today",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 40,
                  width: 45,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(65, 244, 252, 227)),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "1 h",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 180),
                Image.asset(
                  'assets/images/figma_icons/open_mission.png',
                  height: 40,
                  width: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
