import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:laundry/pages/login.dart';
import 'package:laundry/pages/appbar_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final uid = user?.uid;

    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('users').doc(uid).get(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final data = snapshot.data!.data() as Map<String, dynamic>;

        // AMBIL DATA FIRESTORE
        final username = data["username"] ?? "Nama belum diatur";
        final phone = data["phone"] ?? "Nomor belum diatur";
        final address = data["address"] ?? "Alamat belum diatur";

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const App_profile(),
                  const SizedBox(height: 15),

                  // CARD PROFILE
                  Padding(
                    padding: const EdgeInsets.all(15),
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
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),

                          // FOTO PROFIL
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(
                              "assets/images/13.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 10),

                          // DATA USER
                          buildProfileField(
                            icon: Icons.person_2_outlined,
                            text: username,
                          ),
                          buildProfileField(
                            icon: Icons.email_outlined,
                            text: user?.email ?? "Tidak ada email",
                          ),
                          buildProfileField(
                            icon: Icons.phone,
                            text: phone,
                          ),
                          buildProfileField(
                            icon: Icons.home_outlined,
                            text: address,
                          ),

                          // MAP
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: SizedBox(
                                width: double.infinity,
                                height: 160,
                                child: FlutterMap(
                                  options: const MapOptions(
                                    initialCenter:
                                        LatLng(-7.2827, 112.7949),
                                    initialZoom: 15,
                                  ),
                                  children: [
                                    TileLayer(
                                      urlTemplate:
                                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                      subdomains: ['a', 'b', 'c'],
                                    ),
                                    MarkerLayer(
                                      markers: [
                                        Marker(
                                          point: const LatLng(-7.2827, 112.7949),
                                          child: const Icon(
                                            Icons.location_pin,
                                            color: Colors.red,
                                            size: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // LOGOUT
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 57, 116, 119),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Text("LOGOUT"),
                                      SizedBox(width: 5),
                                      Icon(Icons.logout),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // WIDGET FIELD PROFILE
  Widget buildProfileField({required IconData icon, required String text}) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 7, left: 20, right: 20, bottom: 7),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            prefixIcon: Icon(icon),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }
}
