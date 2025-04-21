import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Search bar + filter icon
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Text("Search coffee", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.tune, color: Colors.white),
                )
              ],
            ),

            const SizedBox(height: 20),

            // GridView
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.78,
                children: [
                  CustomWidget(
                    image: 'images/mocah.jpg',
                    name: 'Caffe Mocha',
                    type: 'Deep Foam',
                    price: '4.53',
                    onImageTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThirdPage(),
                        ),
                      );
                    },
                  ),
                  CustomWidget(
                    image: 'images/mocah.jpg',
                    name: 'Flat White',
                    type: 'Espresso',
                    price: '3.53',
                    onImageTap: () {},
                  ),
                  CustomWidget(
                    image: 'images/mocah.jpg',
                    name: 'Caffe Mocha',
                    type: 'Deep Foam',
                    price: '4.53',
                    onImageTap: () {},
                  ),
                  CustomWidget(
                    image: 'images/mocah.jpg',
                    name: 'Flat White',
                    type: 'Espresso',
                    price: '3.53',
                    onImageTap: () {},
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
