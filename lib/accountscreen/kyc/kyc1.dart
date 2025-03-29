import 'package:flutter/material.dart';
import '../../homescreen/homescreen.dart';
import '../businessdetail/busdet1.dart';
import '../helpscreen.dart';
import 'Businesskyc.dart';
import 'kyc2.dart';

class Kyc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KYCVerificationScreen(),
    );
  }
}

class KYCVerificationScreen extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<KYCVerificationScreen> {
  final TextEditingController businessNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KYC Verification",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage1()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image or Illustration
              Center(
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    "assets/images/aa.jpeg", // Ensure the image exists in the assets folder
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Title
              const Center(
                child: Text(
                  "Let's Verify KYC",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              // Business Name Input
              const Text("Business Name"),
              const SizedBox(height: 5),
              TextField(
                controller: businessNameController,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Contract Status
              const Text(
                "Complete the steps below to get verified",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text(
                    "Contract Status: ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pending",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Verification Steps
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VerificationContainer(
                    icon: Icons.note_alt_rounded,
                    label: "ID & Address Verification",
                    gradientColors: [
                      Colors.grey.shade300,
                      Colors.lime.shade300,
                    ],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => kyc2()),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  VerificationContainer(
                    icon: Icons.business,
                    label: "Business Verification",
                    gradientColors: [
                      Colors.grey.shade300,
                      Colors.indigo.shade300,
                    ],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kyc5()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Terms & Conditions
              const Center(
                child: Text(
                  "Read KYC Terms & Conditions",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),

              // Get Verified Button
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => kyc2()),
                      );
                    },
                    child: const Text(
                      "Get Verified",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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

// Reusable Widget: VerificationContainer
class VerificationContainer extends StatelessWidget {
  final IconData icon;
  final String label;
  final List<Color> gradientColors;
  final VoidCallback? onTap;

  const VerificationContainer({
    required this.icon,
    required this.label,
    required this.gradientColors,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: gradientColors,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
