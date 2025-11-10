import 'package:flutter/material.dart';
import 'package:laundry/pages/Schedule.dart';
import 'appbar_caart.dart';

void main() {
  runApp(const Cart());
}

final List<Map<String, dynamic>> data = [
  {
    "text": "est. 36 jam",
    "price": "Rp. 12k/kg",
    "detail": "Regular Wash",
    "icon": Icons.access_time,
    "textc": const Color.fromARGB(255, 170, 239, 181),
    "color": const Color.fromARGB(255, 0, 114, 19),
  },
  {
    "text": "EXPRESS",
    "price": "Rp. 20k/kg",
    "detail": "Wash & Iron",
    "icon": Icons.access_alarm,
    "textc": const Color.fromARGB(255, 234, 149, 144),
    "color": const Color.fromARGB(255, 134, 1, 3),
  },
  {
    "text": "est. 36 jam",
    "price": "Rp. 15k/kg",
    "detail": "Regular Wash",
    "icon": Icons.local_laundry_service,
    "textc": const Color.fromARGB(255, 219, 128, 201),
    "color": const Color.fromARGB(255, 53, 1, 70),
  },
  {
    "text": "est. 24 jam",
    "price": "Rp. 10k/kg",
    "detail": "Dry Cleaning",
    "icon": Icons.cleaning_services,
    "textc": const Color.fromARGB(255, 136, 196, 233),
    "color": const Color.fromARGB(255, 1, 59, 93),
  },
  {
    "text": "EXPRESS",
    "price": "Rp. 25k/item",
    "detail": "SPECIAL WASH",
    "icon": Icons.wash,
    "textc": const Color.fromARGB(255, 219, 222, 149),
    "color": const Color.fromARGB(255, 52, 54, 10),
  },
  {
    "text": "Up To You",
    "price": "Rp. 105k/5kg",
    "detail": "Service",
    "icon": Icons.shopping_bag,
    "textc": const Color.fromARGB(255, 191, 155, 221),
    "color": const Color.fromARGB(255, 40, 11, 81),
  },
];

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const App_cart(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 216, 234, 234),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(250 / 2),
                              color: Colors.white,
                            ),
                            child: TextField(
                              autocorrect: true,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                labelText: "Search Services",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Padding(
                            padding: EdgeInsets.all(11),
                            child: Text(
                              "Our Services",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1.5,
                                ),
                            itemCount: data.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final item = data[index];
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: item["textc"],
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Text(
                                            item["text"],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: item["color"],
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt,
                                          color: Colors.grey[700],
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
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Text(
                                          item["detail"],
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),

                          const SizedBox(height: 40),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Schedule(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  255,
                                  16,
                                  150,
                                  150,
                                ),

                                fixedSize: const Size(double.maxFinite, 45),
                              ),
                              child: const Text(
                                "Schedule a Collection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
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
