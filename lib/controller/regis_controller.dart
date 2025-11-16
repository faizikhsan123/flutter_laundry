import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laundry/pages/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class RegisController {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();
  final TextEditingController usernameC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController addressC = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> register(BuildContext context) async {
    // 🔹 Validasi input kosong
    if (emailC.text.trim().isEmpty || passC.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Harap isi semua kolom terlebih dahulu!"),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    try {
      await _auth.createUserWithEmailAndPassword(
        email: emailC.text.trim(),
        password: passC.text.trim(),
      );

      final uid = _auth.currentUser!.uid;

      // simpan ke firestore
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        "username": usernameC.text,
        "email": emailC.text,
        "phone": phoneC.text,
        "address": addressC.text,
        "uid": uid,
      });

      // 🔹 Tampilkan snackbar sukses
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Registrasi berhasil!"),
          backgroundColor: Colors.green,
        ),
      );

      // 🔹 Tunggu sebentar biar snackbar sempat tampil
      await Future.delayed(const Duration(seconds: 1));

      // 🔹 Pindah ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'weak-password') {
        message = "Password terlalu lemah!";
      } else if (e.code == 'email-already-in-use') {
        message = "Email sudah digunakan!";
      } else if (e.code == 'invalid-email') {
        message = "Format email tidak valid!";
      } else {
        message = e.message ?? "Terjadi kesalahan";
      }

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
