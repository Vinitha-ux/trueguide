import 'package:flutter/material.dart';
import 'package:trueguide/accountscreen/kyc/kyc1.dart';
import 'package:trueguide/accountscreen/kyc/kyc2.dart';

import '../businessdetail/busdet1.dart';

class Kyc5 extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<Kyc5> {
  final TextEditingController ownerController = TextEditingController();
  final TextEditingController businessController = TextEditingController();
  String selectedBusinessType = "GST Number";

  final List<String> businessTypes = [
    "GST Number",
    "Firm's PAN Card", // Fixed typo
    "LLP Agreement",
    "Partnership Deed", // Capitalized for consistency
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KYC Verification",
          style: TextStyle(color: Colors.purple),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Kyc()));
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.purple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Added to handle screen overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Smart Global",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Owner/Partner's Name Field
              TextField(
                controller: ownerController,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(vertical: 20), // Adjusted padding
                  labelText: "Owner/Partner's Name:",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Dropdown for Business Proof Document
              DropdownButtonFormField(
                value: selectedBusinessType,
                items: businessTypes.map((String type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedBusinessType = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Select Business Proof Document",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Document Number Field
              TextField(
                controller: businessController,
                decoration: InputDecoration(
                  labelText: "Enter Document Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 100),

              // Save & Next Button
              SizedBox(
                height: 60,
                width: double.infinity, // Adjusted to take full width
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    //Navigator.push(
                      //  context, MaterialPageRoute(builder: (context) => bus1()));
                  },
                  child: const Text(
                    "Save & Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
}
