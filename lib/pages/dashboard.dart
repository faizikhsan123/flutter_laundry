import 'package:flutter/material.dart';

import 'home.dart';

import 'cart.dart';

import 'offer.dart';
import 'profile.dart';
import 'history.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;

  final List<Widget> showWidget = [
    Homme(),
    Cart(),
    History(),
    penawaran(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            // App_home(), // Panggil widget App_home untuk tampil di atas
            Expanded(
              child: showWidget[index], // Tampilkan halaman sesuai dengan index
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 196, 196, 96),
          currentIndex: index,
          selectedItemColor: const Color.fromRGBO(17, 157, 108, 1),
          unselectedItemColor: const Color.fromRGBO(17, 157, 108, 1),
          iconSize: 28,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Keranjang",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: "Offer",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
