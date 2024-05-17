import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olx/screen/screen_2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(17)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(12)),
                const Text(
                  'WE FIND OUR 1000 + UPDATES',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/data.svg',
                      height: 15,
                    )),
                PopupMenuButton<String>(
                  onSelected: (String value) {
                    if (value == 'list') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen2()),
                      );
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return {'Gallery', 'List'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice.toLowerCase(),
                        child: Text(choice),
                      );
                    }).toList();
                  },
                  icon: const Icon(Icons.list),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade100),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/remote.png'),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Universal remote control',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text('operating at different frequencies',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ],
                            ),
                            Spacer(),
                            Icon(CupertinoIcons.heart),
                            SizedBox(
                              width: 23,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEW',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey,
                                      fontSize: 22),
                                ),
                                Text(
                                  '50000 sum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                      fontSize: 28),
                                ),
                                Text(
                                  'Tashkent/Uchtepa Region',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade100),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/kia.jpg'),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Universal remote control',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text('operating at different frequencies',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ],
                            ),
                            Spacer(),
                            Icon(CupertinoIcons.heart),
                            SizedBox(
                              width: 23,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEW',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey,
                                      fontSize: 22),
                                ),
                                Text(
                                  '50000 sum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                      fontSize: 28),
                                ),
                                Text(
                                  'Tashkent/Uchtepa Region',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade100),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/remote.png'),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Universal remote control',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text('operating at different frequencies',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ],
                            ),
                            Spacer(),
                            Icon(CupertinoIcons.heart),
                            SizedBox(
                              width: 23,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEW',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey,
                                      fontSize: 22),
                                ),
                                Text(
                                  '50000 sum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                      fontSize: 28),
                                ),
                                Text(
                                  'Tashkent/Uchtepa Region',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        width: 190,
        color: Colors.blue,
        child: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
            const Text(
              'SAVE SEARCH',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
