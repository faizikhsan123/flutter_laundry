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
    "color": Color.fromARGB(255, 194, 255, 204),
    "textc": Color.fromARGB(255, 0, 114, 19),
    "image": "assets/images/haha.png",
  },
  {
    "price": "Rp. 10.000",
    "title": "DRY CLEAN",
    "detail": "24 JAM",
    "delivery": "Delivered on 02/04/25",
    "color": Color.fromARGB(255, 254, 183, 179),
    "textc": Color.fromARGB(255, 134, 1, 3),
    "image": "assets/images/hihi.png",
  },
  {
    "price": "Rp. 30.000",
    "title": "DRY STEAM",
    "detail": "24 JAM",
    "delivery": "Delivered on 02/01/25",
    "color": Color.fromARGB(255, 245, 165, 229),
    "textc": Color.fromARGB(255, 53, 1, 70),
    "image": "assets/images/hihi.png",
  },
  {
    "price": "Rp. 30.000",
    "title": "REGULAR WASH",
    "detail": "36 JAM",
    "delivery": "Delivered on 02/03/25",
    "color": Color.fromARGB(255, 136, 196, 233),
    "textc": Color.fromARGB(255, 1, 59, 93),
    "image": "assets/images/huhu.png",
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
                const SizedBox(height: 15),

                // CARD WRAPPER
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    height: 560,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 216, 234, 234),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 12,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 12,
                          spreadRadius: 1,
                          offset: Offset(0, -4),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 12,
                          spreadRadius: 1,
                          offset: Offset(4, 0),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 12,
                          spreadRadius: 1,
                          offset: Offset(-4, 0),
                        ),
                      ],
                    ),

                    // CARD LIST
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
                                  offset: Offset(4, 4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                right: 10,
                                left: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // IMAGE FIXED
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 0,
                                        right: 0,
                                        top: 10,
                                      ),
                                      child: Image.asset(
                                        item["image"],
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.contain
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 15),

                                  // TEXT AREA
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["title"],
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            item["price"],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
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

                                  // STATUS BADGE
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 4,
                                    ),
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
