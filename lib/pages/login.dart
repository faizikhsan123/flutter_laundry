import 'package:flutter/material.dart';
import 'package:laundry/controller/login_controller.dart';
import 'package:laundry/custom/custom_awal.dart';
import 'package:laundry/custom/custom_input.dart';
import 'package:laundry/pages/regis.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController controller = LoginController();
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF13BCBC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian header logo
            CustomAwal(),

            const SizedBox(height: 90),

            // Bagian input email
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: CustomInput(
                label: "Masukkan Email",
                prefixIcon: Icons.email,
                controller: controller.emailC,
              ),
            ),

            // Bagian input password
            Padding(
             padding: const EdgeInsets.only(left: 30,right:30 ,bottom: 20),
              child: CustomInput(
                label: "Masukkan Password",
                prefixIcon: Icons.key,
                obscureText: true,
                controller: controller.passC,
              ),
            ),

            const Text(
              "Forgot password?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            // Tombol Login
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                onPressed: () async {
                  await controller.login(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color.fromARGB(255, 49, 64, 71),
                  fixedSize: const Size(350, 50),
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Color.fromARGB(255, 253, 253, 253),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const Text(
              "------------------- or login with ------------------",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tombol login sosial
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 193, 57, 57),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            // Navigasi ke halaman register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Regis()),
                    );
                  },
                  child: const Text(
                    "Regis Now!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 44, 43, 43),
                    
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
