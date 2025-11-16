import 'package:flutter/material.dart';
import 'package:laundry/custom/custom_button.dart';
import 'package:laundry/custom/custom_order.dart';
import 'package:laundry/custom/custom_schedule_order.dart';
import 'package:laundry/pages/dashboard.dart';
import 'package:laundry/pages/home.dart';

class Order extends StatefulWidget {
  Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final jobRoleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomScheduleOrder(label: "Review Order"),
               SizedBox(height: 20),
            
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 680,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 165, 219, 219),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(0, -4),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(4, 0),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(-4, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Bagian atas tetap
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "WASH & IRON",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 160, 216, 254),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 2,
                                      bottom: 2,
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 94, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text("EXPRESS"),
                            Text("Rp. 20Kg X 2"),
                            SizedBox(height: 20),

                            // Collection Time
                            SizedBox(height: 20),

                            // Delivery Time
                            CustomOrder(
                              label: "Collection Time :",
                              label2: "Today, 11.00 AM",
                            ),
                            SizedBox(height: 10),

                            // Alamat
                            CustomOrder(
                              label: "Delivery Time :",
                              label2: "25/10/20025",
                            ),
                            SizedBox(height: 10),

                            // === Bagian bawah dibuat seragam ===
                            CustomOrder(
                              label: "Delivery Address :",
                              label2: "Keputih Gg 2 A No 8",
                            ),
                            SizedBox(height: 20),

                            CustomOrder(
                              label: "Checkout Details :",
                              label2: "",
                            ),
                            SizedBox(height: 20),

                            CustomOrder(
                              label: "Service Charge",
                              label2: "Rp. 40k.-",
                            ),
                            SizedBox(height: 10),
                            CustomOrder(
                              label: "Collection & Delivery Charge",
                              label2: "Rp.2k,-",
                            ),
                            SizedBox(height: 10),

                            CustomOrder(
                              label: "Promo Code",
                              label2: "#UP1G4Nt4Ng",
                            ),
                            SizedBox(height: 35),

                            CustomOrder(
                              label: "Order Subtotal",
                              label2: "Rp. 42k,-",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 40,
                  top: 0,
                  bottom: 20,
                ),
                child: CustomButton(label: "PAY NOW", destination: Dashboard()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
