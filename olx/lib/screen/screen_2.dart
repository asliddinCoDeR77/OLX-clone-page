import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olx/screen/screen_1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    height: 12,
                  )),
              PopupMenuButton<String>(
                onSelected: (String value) {
                  if (value == 'gallery') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen1()),
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
                  icon: const Icon(Icons.search),
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
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: _buildFilteredItems(),
            ),
          ),
        ],
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

  List<Widget> _buildFilteredItems() {
    final items = [
      {
        'imagePath': 'assets/images/remote.png',
        'title': 'Universal remote control operating at different frequencies',
        'condition': 'NEW',
        'price': '5\$',
      },
      {
        'imagePath': 'assets/images/iphone.jpg',
        'title': 'NEW 2024 IPHONE 512GB/8GB MEMORY',
        'condition': 'NEW',
        'price': '899\$',
      },
      {
        'imagePath': 'assets/images/kia.jpg',
        'title': 'KIA SPORT CAR COMFORT + RELAX',
        'condition': 'Новый',
        'price': '12000\$',
      },
      {
        'imagePath': 'assets/images/remote.png',
        'title': 'Пульт универсальный работающий на разных частотах',
        'condition': 'Новый',
        'price': '50 000 сум',
      },
    ];

    final filteredItems = items.where((item) {
      final title = item['title']!.toLowerCase();
      return title.contains(_searchQuery);
    }).toList();

    return filteredItems.map((item) {
      return Column(
        children: [
          ProductItem(
            imagePath: item['imagePath']!,
            title: item['title']!,
            condition: item['condition']!,
            price: item['price']!,
          ),
          const SizedBox(height: 12),
        ],
      );
    }).toList();
  }
}

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String condition;
  final String price;

  const ProductItem({
    required this.imagePath,
    required this.title,
    required this.condition,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    condition,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
