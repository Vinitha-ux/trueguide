import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trueguide/homescreen/homescreen.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 100,top: 200),
              child: Container(
                height: 50,
                width: 400,
                child: Text(
                  'Are you sure you want to Logout?',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // added space between text and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // added space between buttons
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        Homepage1()),
                  );
                },
                child: Text(
                  'Yes',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor : Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50,
                      vertical: 15),
                ),
              ),
              SizedBox(width: 10), // added space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        Homepage1()),
                  );
                },
                child: Text(
                  'No',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor : Colors.black,
                  shape: RoundedRectangleBorder(borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50,
                      vertical: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

