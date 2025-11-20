import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:laundry/custom/custom_button.dart';
import 'package:laundry/custom/custom_input.dart';
import 'package:laundry/custom/custom_schedule_order.dart';
import 'package:laundry/pages/Order.dart';

class Schedule extends StatefulWidget {
  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final jobRoleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomScheduleOrder(label: "Collection & Delivery"),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(20),
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
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: const Offset(0, -4),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: const Offset(4, 0),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: const Offset(-4, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 5,
                        ),
                        child: Text(
                          "New Collection Time",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      // 🔹 Baris 2 input kecil
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomInput(
                                label: "Today",
                                prefixIcon: Icons.calendar_month,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: CustomInput(
                                label: "11:00 AM",
                                prefixIcon: Icons.timelapse_sharp,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomInput(
                          label: "Collection From Me",
                          prefixIcon: Icons.person,
                        ),
                      ),

                      const Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 15,
                          bottom: 5,
                        ),
                        child: Text(
                          "New Delivery Time",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      // 🔹 Baris 2 input kecil
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              child: CustomInput(
                                label: "Today",
                                prefixIcon: Icons.calendar_month,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: CustomInput(
                                label: "11:00 AM",
                                prefixIcon: Icons.timelapse,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomInput(
                          label: "Collection From Me",
                          prefixIcon: Icons.person,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          "Frequency",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          right: 12,
                          top: 8,
                        ),
                        child: CustomDropdown(
                          hintText: 'Select job role',
                          items: const [
                            'Developer',
                            'Designer',
                            'Consultant',
                            'Student',
                          ],
                          controller: jobRoleCtrl,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          "Delivery Address",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomInput(
                          label: "Collection From Me",
                          prefixIcon: Icons.person,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          "Add Instruction for drivers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 4,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 7,
                                horizontal: 15,
                              ),
                              hintText: "Deskripsi",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 40,
                  right: 40,
                  bottom: 20,
                ),
                child: CustomButton(label: "NEXT", destination: Order()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
