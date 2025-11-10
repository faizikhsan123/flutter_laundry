import 'package:flutter/material.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';

void main() {
  runApp(Schedule());
}

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final jobRoleCtrl = TextEditingController();

  late int dataAwaal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFF13BCBC),

          title: Text(
            "Collection & Delivery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Container(
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 216, 234, 234),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "New Collection Time",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    hintText: "Today",
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.calendar_month),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 21,
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    hintText: "11:00 AM",
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.timelapse_sharp),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 21,
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 11,
                          ),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  hintText: "Collection from me",
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.person),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 21,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "New Delivery Time",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    hintText: "25/10/25",
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.calendar_month),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 21,
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: TextField(
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    hintText: "09:00 AM",
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.timelapse_sharp),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 21,
                                      vertical: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 11,
                          ),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  hintText: "Collection from me",
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.person),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 21,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
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
                            left: 20,
                            right: 20,
                            top: 8,
                          ),
                          child: Expanded(
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            "Delivery Address",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 12,
                          ),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  hintText: "Keputih Gg 2 A No 8",
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.location_city),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 21,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
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
                            left: 25,
                            right: 25,
                            top: 12,
                            bottom: 21,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            child: SizedBox(
                              width: double.maxFinite,
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 5, // jumlah baris maksimum
                                minLines: 4, // baris minimum (opsional)
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 15,
                                  ),
                                  hintText: "Deskripsi",
                                  alignLabelWithHint:
                                      true, // biar label sejajar di atas
                                  border: InputBorder.none,
                                ),
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
                    bottom: 0,
                    left: 50,
                    right: 50,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (Color(0xFF13BCBC)),
                      fixedSize: Size(double.maxFinite, 20),
                    ),
                    onPressed: () {},
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
