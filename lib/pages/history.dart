import 'package:flutter/material.dart';
import 'package:laundry/pages/appbar_history.dart';

void main() {
  runApp(const History());
}

final List<Map<String, dynamic>> data = [
  {
    "price": "Rp. 40.000",
    "title": "WASH & IRON",
    "detail": "EXPRESS",
    "delivery": "Delivered on 02/08/25",
    "color": const Color.fromARGB(255, 218, 168, 165),
    "textc": const Color.fromARGB(255, 84, 2, 2),
  },
  {
    "price": "Rp. 10.000",
    "title": "DRY CLEAN",
    "detail": "24 JAM",
    "delivery": "Delivered on 02/04/25",
    "color": const Color.fromARGB(255, 155, 226, 169),
    "textc": const Color.fromARGB(255, 16, 105, 0),
  },
  {
    "price": "Rp. 30.000",
    "title": "DRY STEAM",
    "detail": "24 JAM",
    "delivery": "Delivered on 02/01/25",
    "color": const Color.fromARGB(255, 156, 211, 228),
    "textc": const Color.fromARGB(255, 0, 112, 113),
  },
  {
    "price": "Rp. 30.000",
    "title": "REGULAR WASH",
    "detail": "36 JAM",
    "delivery": "Delivered on 02/03/25",
    "color": const Color.fromARGB(255, 160, 140, 226),
    "textc": const Color.fromARGB(255, 56, 1, 114),
  },
];

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const App_history(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 165, 219, 219),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: data.map((item) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/haha.png",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 15),

                                  
                                  
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            item["title"],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            item["price"],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            item["delivery"],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: item["color"],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      item["detail"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: item["textc"],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
