import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laundry/pages/dashboard.dart';

class LoginController {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login(BuildContext context) async {
    if (emailC.text.trim().isEmpty || passC.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Harap isi email dan password terlebih dahulu!"),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    try {
      await _auth.signInWithEmailAndPassword(
        email: emailC.text.trim(),
        password: passC.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login berhasil!"),
          backgroundColor: Colors.green,
        ),
      );

      await Future.delayed(const Duration(seconds: 1));

      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message = switch (e.code) {
        'user-not-found' => "Pengguna tidak ditemukan!",
        'wrong-password' => "Password salah!",
        'invalid-email' => "Format email tidak valid!",
        _ => e.message ?? "Terjadi kesalahan",
      };

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), backgroundColor: Colors.orangeAccent),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Terjadi kesalahan: $e"),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }
}
