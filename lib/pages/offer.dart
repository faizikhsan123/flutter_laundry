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
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
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
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250 / 2),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              ),
                            ],
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

                          // height: 130,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // ======== BAGIAN TEKS (KIRI) =========
                                    Expanded(
                                      flex: 0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "50%",
                                            style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF006D63),
                                              height: 0.9, // biar nempel
                                            ),
                                          ),
                                          Text(
                                            "OFF",
                                            style: TextStyle(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF006D63),
                                              height: 0.9, // biar nempel
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // ======== BAGIAN GAMBAR (KANAN) =========
                                    Expanded(
                                      flex: 0,
                                      child: Image.asset(
                                        "assets/images/6.png",
                                        width: 130,
                                        fit: BoxFit
                                            .contain, // supaya proporsi gambar tetap bagus
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 12,
                                spreadRadius: 1,
                                offset: Offset(4, -4),
                              ),
                            ],
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
                          height: 140,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.12),
                                        blurRadius: 12,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // ======== BAGIAN TEKS (KIRI) =========
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Free",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF006D63),
                                                height: 0.9, // biar nempel
                                              ),
                                            ),
                                            Text(
                                              "Ironing",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF006D63),
                                                height: 0.9, // biar nempel
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Order Over Rp.100 K",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                  255,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                                height: 0.9, // biar nempel
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // ======== BAGIAN GAMBAR (KANAN) =========
                                      Expanded(
                                        flex: 0,
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                            ),
                                            child: Image.asset(
                                              "assets/images/5.png",
                                              fit: BoxFit
                                                  .contain, // supaya proporsi gambar tetap bagus
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 12,
                                spreadRadius: 1,
                                offset: Offset(4, -4),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 140,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.12),
                                        blurRadius: 12,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // ======== BAGIAN TEKS (KIRI) =========
                                      Expanded(
                                        flex: 0,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Don't Miss Our",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF006D63),
                                                height: 0.9, // biar nempel
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  "DRY",
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xFF006D63),
                                                    height: 0.9, // biar nempel
                                                  ),
                                                ),
                                                SizedBox(width: 10),

                                                Text(
                                                  "25%off",
                                                  style: TextStyle(
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromARGB(
                                                      255,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                    height: 0.9, // biar nempel
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Text(
                                              "CLEANING",
                                              style: TextStyle(
                                                fontSize: 14,
                                                letterSpacing: 9,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF006D63),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // ======== BAGIAN GAMBAR (KANAN) =========
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 00,
                                              left: 0,
                                            ),
                                            child: Image.asset(
                                              "assets/images/6.png",
                                              fit: BoxFit
                                                  .contain, // supaya proporsi gambar tetap bagus
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 12,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 12,
                                spreadRadius: 1,
                                offset: Offset(4, -4),
                              ),
                            ],
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
