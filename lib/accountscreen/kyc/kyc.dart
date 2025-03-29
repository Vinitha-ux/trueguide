import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trueguide/accountscreen/kyc/kyc1.dart'; // Assuming this is the correct import for the Kyc class.
import '../../homescreen/homescreen.dart';
import '../businessdetail/busdet1.dart'; // Assuming this is the correct import for the kycc3 class.

class Kkyc extends StatefulWidget {
  const Kkyc({super.key});

  @override
  State<Kkyc> createState() => _KkycState();
}

class _KkycState extends State<Kkyc> {
  final List<Map<String, dynamic>> cate = [
    {"title": "KYC", "image": 'assets/images/kyc11.png', "screen": Kyc()},
    {"title": "GST", "image": 'assets/images/kycc22.png', "screen": kycc3()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage1()),
            ); // Allows navigating back from the current screen.
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff742B88),
          ),
        ),
        title: Text(
          "KYC",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 16, color: Color(0xff834394)),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cate.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // Added rounded corners for the image.
                child: Image.asset(
                  cate[index]["image"], // Dynamically access image from cate list.
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover, // Ensures proper image resizing.
                ),
              ),
              title: Text(
                cate[index]["title"],
                style: GoogleFonts.lato(fontSize: 15),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cate[index]["screen"],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

