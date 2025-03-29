import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notify extends StatefulWidget {
  const notify({super.key});

  @override
  State<notify> createState() => _Message_ScreenState();
}

class _Message_ScreenState extends State<notify> {
  List<String> messages = [
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
  ];

  List<String> text = ['R', 'R', 'R', 'R',];

  List<String> text1 = ['Today', 'Yesterday', 'Yesterday', 'This Week',];

  List<String> filteredMessages = [];

  String selectedFilter = "All";

  @override
  void initState() {
    super.initState();
    filteredMessages = messages;
  }

  void _applyFilter(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xff742B88), size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Notification",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Color(0xff742B88)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Search Bar
            const SizedBox(height: 10),
            // Horizontal Filter Bar
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildFilterChip("All Notification "),
                  _buildFilterChip(" Enquiries & Leads"),
                  _buildFilterChip("Product Requirement "),
                  _buildFilterChip("Unread"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredMessages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff742B88)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1[index],
                            style: GoogleFonts.lato(fontSize: 14, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xff742B88),
                                radius: 25,
                                child: Text(
                                  text[index],
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  filteredMessages[index],
                                  style: GoogleFonts.lato(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ChoiceChip(
        label: Text(label),
        selected: selectedFilter == label,
        selectedColor: Color(0xff742B88),
        onSelected: (bool selected) {
          _applyFilter(label);
        },
      ),
    );
  }
}
