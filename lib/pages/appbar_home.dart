import 'package:flutter/material.dart';

class App_home extends StatelessWidget {
  const App_home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFF13BCBC),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  // First Row: Hi User + icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Hi,",
                            style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 135, 132, 132),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " User ",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.waving_hand,
                            size: 32,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      // Search and notification icons
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.search,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.notifications,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                 
                  // Text below
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 1),
                    child: const Text(
                      "Welcome to Athose Laundry",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
