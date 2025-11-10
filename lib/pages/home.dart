import 'package:flutter/material.dart';
import 'appbar_home.dart';

void main() {
  runApp(const Homme());
}

final List<Map<String, dynamic>> data = [
  {
    "price": "Rp. 40.000",
    "jenis": "est. 36 jam",
    "title": "WASH & IRON",
    "color": const Color.fromARGB(255, 170, 239, 181),
    "textc": const Color.fromARGB(255, 0, 114, 19),
  },
  {
    "price": "Rp. 10.000",
    "jenis": "EXPRESS",
    "title": "DRY CLEAN",
    "color": const Color.fromARGB(255, 234, 149, 144),
    "textc": const Color.fromARGB(255, 134, 1, 3),
  },
  {
    "price": "Rp. 30.000",
    "jenis": "est. 23 jam",
    "title": "DRY STEAM",
    "color": const Color.fromARGB(255, 219, 128, 201),
    "textc": const Color.fromARGB(255, 53, 1, 70),
  },
  {
    "price": "Rp. 30.000",
    "jenis": "est. 6 jam",
    "title": "REGULAR WASH",
    "color": const Color.fromARGB(255, 136, 196, 233),
    "textc": const Color.fromARGB(255, 1, 59, 93),
  },
];

class Homme extends StatelessWidget {
  const Homme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const App_home(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    height: 750,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 216, 234, 234),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Center(
                            child: Text(
                              "Our Laundry Services",
                              style: TextStyle(
                                fontSize: 28,
                                color: Color.fromARGB(255, 15, 145, 145),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          SizedBox(
                            height: 110,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: data.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 16),
                              itemBuilder: (context, index) {
                                final item = data[index];
                                return Container(
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 6,
                                                    vertical: 3,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: item["color"],
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: Text(
                                                item["jenis"],
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: item["textc"],
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 16,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item["price"],
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              item["title"],
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 20),

                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                            children: const [
                              Text(
                                "Active Orders",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "See all",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(233, 0, 129, 235),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Your order is picked",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  "Order#2775 - 7 kg - Delivery in 2 days",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 4,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6,
                                    ),
                                    overlayShape:
                                        SliderComponentShape.noOverlay,
                                    activeTrackColor: Colors.teal,
                                    inactiveTrackColor:
                                        Colors.tealAccent.shade100,
                                    thumbColor: Colors.teal,
                                  ),
                                  child: const Slider(
                                    value: 0.25,
                                    onChanged: null,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Picked",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Washing",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Out for Delivery",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Delivered",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Special Offers",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 15, 145, 145),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 10),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/images/1.png",
                                        width: 210,
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/images/2.png",
                                        width: 210,
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/images/1.png",
                                        width: 210,
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/images/2.png",
                                        width: 210,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
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
