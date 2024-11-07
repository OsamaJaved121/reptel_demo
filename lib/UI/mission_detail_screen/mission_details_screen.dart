import 'package:flutter/material.dart';

class MissionDetails extends StatefulWidget {
  const MissionDetails({super.key});

  @override
  State<MissionDetails> createState() => _MissionDetailsState();
}

class _MissionDetailsState extends State<MissionDetails> {
  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              'assets/images/backgrounds/mission_detail_bg.jpeg',
            ),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Mission Detail',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: sHeight * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/backgrounds/wwave pattern.png'),
                  // colorFilter: ColorFilter.mode(
                  //   Colors.black.withOpacity(0.001),
                  //   BlendMode.srcOver,
                  // ),
                ),
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        'Emergency Room Assessment',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Due Date',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Aug 25, 2024',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 45),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Duration',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2h 30min',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(
                    child: Text(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 1,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Text(
                        'What you will Get?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 8),
                  const Text(
                    'After completing this task you will unlock this “Premium Badge” and earned “2000 points”',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/backgrounds/badge1.png',
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '2000 points',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black),
                      icon: const Icon(Icons.play_arrow_outlined),
                      label: const Text('Start Now'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
