import 'package:flutter/material.dart';
import 'package:laundry/pages/appbar_profile.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:laundry/pages/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const App_profile(),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 216, 234, 234),
                  ),
                
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),

                     
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            "assets/images/13.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(height: 10),

                      
                        buildProfileField(
                          icon: Icons.person_2_outlined,
                          text: "Harry Poah",
                        ),
                        buildProfileField(
                          icon: Icons.email_outlined,
                          text: "JessicaJane99@gmail.com",
                        ),
                        buildProfileField(
                          icon: Icons.phone,
                          text: "0821-8272-9381",
                        ),
                        buildProfileField(
                          icon: Icons.home_outlined,
                          text: "Jl Gunung Merapi Gg 2 A No 8 Kec",
                        ),

                       
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: double.infinity,
                              height: 160,
                              child: FlutterMap(
                                options: const MapOptions(
                                  initialCenter: LatLng(-7.2827, 112.7949),
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

                    
                        Padding(
                          padding: const EdgeInsets.only(right: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    57,
                                    116,
                                    119,
                                  ),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
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
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileField({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
