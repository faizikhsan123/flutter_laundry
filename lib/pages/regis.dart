import 'package:flutter/material.dart';

// peta
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:laundry/pages/login.dart';

void main() {
  runApp(Regis());
}

class Regis extends StatelessWidget {
  const Regis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF13BCBC),
        // appBar: AppBar(
        //   backgroundColor: Colors.blueGrey,
        //   leading: GestureDetector(
        //     child: Icon(Icons.arrow_back, color: Colors.white),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Logo.png", width: 120),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 65),
                              Row(
                                children: [
                                  Text(
                                    "Athose",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(221, 142, 136, 136),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Laundry",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF13BCBC),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              Text(
                                "E X P R E S S ",
                                style: TextStyle(
                                  letterSpacing: 7,

                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 50,
                    bottom: 10,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 239, 239, 238),
                    ),
                    child: TextField(
                      // controller: emailC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Masukkan Username",
                        prefixIcon: const Icon(Icons.person),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 239, 239, 238),
                    ),
                    child: TextField(
                      // controller: emailC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Masukkan Email",
                        prefixIcon: const Icon(Icons.email),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 239, 239, 238),
                    ),
                    child: TextField(
                      // controller: emailC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Masukkan Mobile Number",
                        prefixIcon: const Icon(Icons.call),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
               padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 239, 239, 238),
                    ),
                    child: TextField(
                      // controller: emailC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Masukkan Address",
                        prefixIcon: const Icon(Icons.location_city),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: FlutterMap(
                        options: MapOptions(
                          initialCenter: LatLng(
                            -7.2827,
                            112.7949,
                          ), // Keputih, Surabaya
                          initialZoom:
                              15, // lebih dekat biar jelas area Keputih
                        ),
                        children: [
                          // Layer peta dari OpenStreetMap
                          TileLayer(
                            urlTemplate:
                                'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                            subdomains: const ['a', 'b', 'c'],
                          ),
                          // Marker lokasi Keputih
                          MarkerLayer(
                            markers: [
                              Marker(
                                point: LatLng(-7.2827, 112.7949),
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
                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12)
                      ),
                     backgroundColor: Colors.blueGrey,
                      fixedSize: const Size(double.maxFinite, 20),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        " Login Now!",
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
