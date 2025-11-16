import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:laundry/controller/regis_controller.dart';
import 'package:laundry/custom/custom_awal.dart';
import 'package:laundry/custom/custom_input.dart';
import 'package:laundry/pages/login.dart';

class Regis extends StatelessWidget {
  const Regis({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = RegisController();

    return Scaffold(
      backgroundColor: const Color(0xFF13BCBC),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // HEADER
              CustomAwal(),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: CustomInput(
                  label: "Masukkan Username",
                  prefixIcon: Icons.person,
                  controller: controller.usernameC,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: CustomInput(
                  label: "Masukkan Email",
                  prefixIcon: Icons.email,
                  controller: controller.emailC,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: CustomInput(
                  label: "Masukkan Password",
                  prefixIcon: Icons.key,
                  controller: controller.passC,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: CustomInput(
                  label: "Masukkan Mobile Number",
                  prefixIcon: Icons.call,
                  controller: controller.phoneC,
                ),
              ),

              // ===== BAGIAN ALAMAT DENGAN PETA =====
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                child: CustomInput(
                  label: "Alamat Anda",
                  prefixIcon: Icons.location_city,
                  controller: controller.addressC,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: FlutterMap(
                      options: MapOptions(
                        initialCenter: const LatLng(
                          -7.2827,
                          112.7949,
                        ), // Keputih
                        initialZoom: 15,
                      ),
                      children: [
                        // Layer peta
                        TileLayer(
                          urlTemplate:
                              'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                          subdomains: const ['a', 'b', 'c'],
                        ),

                        // Marker lokasi
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: const LatLng(-7.2827, 112.7949),
                              width: 60,
                              height: 60,
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

              const SizedBox(height: 20),

              // ===== BUTTON REGISTER =====
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    await controller.register(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 49, 64, 71),
                    fixedSize: const Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              // ===== LOGIN LINK =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      " Login Now!",
                      style: TextStyle(
                        color: Color.fromARGB(255, 49, 64, 71),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
