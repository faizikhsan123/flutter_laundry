import 'package:flutter/material.dart';
import 'package:laundry/custom/custom_schedule_order.dart';

final List<Map<String, dynamic>> data = [
  {
    "date": "2 November 2025",
    "title": "Your Wash & Iron order has been picked up!",
    "subtitle": "Collected by driver at 11:30 AM",
    "button": "View Details",
    "icon": Icons.local_shipping,
    "color": Color(0xFF0F766E),
  },
  {
    "date": "12 Oktober 2025",
    "title": "Your Dry Clean order is on the way",
    "subtitle": "Expected delivery: Today, 09:00 AM",
    "button": "Track Delivery",
    "icon": Icons.local_shipping_outlined,
    "color": Color(0xFF0F766E),
  },
  {
    "date": "12 Oktober 2025",
    "title": "New Offer Available! Claim it now",
    "subtitle": "20% OFF on Special Wash",
    "button": "View Offer",
    "icon": Icons.card_giftcard,
    "color": Color(0xFF0EA5E9),
  },
  {
    "date": "2 Juli 2025",
    "title": "Your Regular Wash order has been picked up!",
    "subtitle": "Collected by driver at 11:30 AM",
    "button": "View Details",
    "icon": Icons.shopping_bag,
    "color": Color(0xFF0F766E),
  },
];

class notificate extends StatelessWidget {
  notificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomScheduleOrder(label: "NOTIFICATION"),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 216, 234, 234),
                    borderRadius: BorderRadius.circular(12),
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
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildNotificationList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildNotificationList() {
    List<Widget> widgets = [];
    String? lastDate;

    for (var item in data) {
      // Tambahkan header tanggal
      if (lastDate != item["date"]) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 8),
            child: Text(
              item["date"],
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        );

        lastDate = item["date"];
      }

      // Card notifikasi
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),

          child: Row(
            children: [
              // Icon kotak
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: item["color"].withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(item["icon"], color: item["color"], size: 30),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["title"],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      item["subtitle"],
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      height: 32,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: item["color"],
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          item["button"],
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }
}
