import 'package:flutter/material.dart';

import 'package:laundry/pages/appbar_offer.dart';

class penawaran extends StatelessWidget {
  const penawaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              App_offer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 216, 234, 234),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250 / 2),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search Offer & Coupon",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Welcome Offer",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Special Offer",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
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
    );
  }
}
