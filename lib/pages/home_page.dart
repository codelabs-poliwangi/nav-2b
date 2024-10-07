import 'package:flutter/material.dart';
import 'package:navigation_2b/models/item.dart';
import 'package:navigation_2b/pages/item_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Daftar item yang akan ditampilkan
  final List<Item> items = const [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Indomie', price: 3000),
    Item(name: 'Gula', price: 10000),
    Item(name: 'Tepung', price: 8000),
    Item(name: 'Susu', price: 15000),
    Item(name: 'Kopi', price: 12000),
    Item(name: 'Teh', price: 6000),
    Item(name: 'Minyak Goreng', price: 14000),
    Item(name: 'Beras', price: 50000),
    Item(name: 'Telur', price: 20000),
    Item(name: 'Mentega', price: 7000),
    Item(name: 'Keju', price: 25000),
    Item(name: 'Daging Ayam', price: 35000),
    Item(name: 'Daging Sapi', price: 75000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: item),
                  ),
                );
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
