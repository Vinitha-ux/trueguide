import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _Message_ScreenState();
}

class _Message_ScreenState extends State<message> {
  final TextEditingController _searchController = TextEditingController();
  List<String> messages = [
    "You have a new lead from the Architect category. Name: Rajesh Sharma, Contact: +91 9876543210, Requirement: Residential Design Consultation.",
    "From: Priya Verma \nHi, I am interested in the land promotion services. \nCould you provide details about your pricing? \nSee you soon!  Flutter is awesome!\nLet\'s catch up later",
  ];
  List<String> text = [
    'S',
    'R',
    'T',
    'P',
    'A',
    'S',
  ];

  List<String> filteredMessages = [];
  String selectedFilter = "All";

  @override
  void initState() {
    super.initState();
    filteredMessages = messages;
  }

  void _filterMessages(String query) {
    setState(() {
      filteredMessages = messages
          .where((msg) => msg.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
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
          "Messages",
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w400, color: Color(0xff742B88)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Search Bar
            TextFormField(
              controller: _searchController,
              onChanged: _filterMessages,
              decoration: InputDecoration(
                hintText: "Search in Message...",
                prefixIcon: const Icon(Icons.search, color:Color(0xff742B88)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 10),

            // Horizontal Filter Bar
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildFilterChip("All Messages"),
                  _buildFilterChip("Leads Message"),
                  _buildFilterChip("Costomer Inquires"),
                  _buildFilterChip("Unread"),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // Messages List
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
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff742B88),
                            radius:25,
                            child: Text(text[index],style: TextStyle(color: Colors.white,fontSize: 20),),
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