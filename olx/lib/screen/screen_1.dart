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
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _searchQuery = _searchController.text.toLowerCase();
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _buildItemList(),
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

  Widget _buildItemList() {
    final items = [
      {
        'image': 'assets/images/remote.png',
        'title': 'Universal remote control',
        'subtitle': 'operating at different frequencies',
        'price': '50000 sum',
        'location': 'Tashkent/Uchtepa Region'
      },
      {
        'image': 'assets/images/kia.jpg',
        'title': 'Kia Car',
        'subtitle': 'Brand new model',
        'price': '150000 sum',
        'location': 'Tashkent/Mirabad Region'
      },
      // Add more items as needed
    ];

    final filteredItems = items.where((item) {
      return item['title']!.toLowerCase().contains(_searchQuery) ||
          item['subtitle']!.toLowerCase().contains(_searchQuery);
    }).toList();

    return Column(
      children: filteredItems.map((item) {
        return Container(
          width: 500,
          height: 500,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(item['image']!),
                  const Padding(padding: EdgeInsets.all(5)),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(item['subtitle']!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      const Spacer(),
                      const Icon(CupertinoIcons.heart),
                      const SizedBox(
                        width: 23,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'NEW',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey,
                                fontSize: 22),
                          ),
                          Text(
                            item['price']!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                                fontSize: 28),
                          ),
                          Text(
                            item['location']!,
                            style: const TextStyle(
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
          ),
        );
      }).toList(),
    );
  }
}
