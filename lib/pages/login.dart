import 'package:flutter/material.dart';
import 'package:laundry/pages/regis.dart';
import 'package:laundry/pages/dashboard.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyappState();
}

class _MyappState extends State<LoginPage> {
  bool isHidden = true;

  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color(0xFF13BCBC),
        body: SingleChildScrollView(
          child: Column(
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
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 70),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 239, 239, 238),
                      ),
                      child: TextField(
                        controller: emailC,
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Masukkan Email",
                          prefixIcon: const Icon(Icons.email),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                           border: InputBorder.none
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 239, 239, 238),
                      ),
                      child: TextField(
                        controller: passC,
                        autocorrect: false,

                        textInputAction: TextInputAction.done,
                        obscureText: isHidden,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: "Masukkan Passowrd",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() => isHidden = !isHidden);
                            },
                            icon: const Icon(Icons.remove_red_eye),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                         border: InputBorder.none
                        ),
                      ),
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

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                        debugPrint(
                          "Masuk denngan email : ${emailC.text} dan password : ${passC.text}",
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),

                        backgroundColor: Colors.blueGrey,

                        fixedSize: const Size(double.maxFinite, 30),
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
                    "-------------------or login with------------------",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(150, 20),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 193, 57, 57),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Google",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(150, 20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.facebook, color: Colors.blue),
                              SizedBox(width: 5),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Regis()),
                          );
                        },
                        child: Text(
                          "Regis Now!",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 44, 43, 43),
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
