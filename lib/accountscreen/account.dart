import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trueguide/accountscreen/special%20day%20poster.dart';
import 'package:trueguide/accountscreen/wishlist.dart';
import 'package:trueguide/bottomnav/Bottom_Naviga.dart';
import 'package:trueguide/logout.dart';
import 'business.dart';
import 'dashboard.dart';
import 'helpscreen.dart';
import 'lang.dart';
import 'message.dart';
import 'notification.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account> {
  final List<Map<String, dynamic>> add = [
    {"title": "My Business"},
    {"title": "Add Business"},
    {"title": "Add Product"},
  ];
  final List<Map<String, dynamic>> menu = [
    {"title": "Account Setting", "icon": Icons.manage_accounts_outlined,"screen": Buss()},
    {"title": "My Digital Card", "icon": Icons.credit_card},
    {"title": "Special Day Poster", "icon": Icons.image_outlined,'screen': Special_day()},
    {"title": "Wishlist", "icon": Icons.monitor,"screen":wishlist()},
    {"title": "My Message", "icon": Icons.message,"screen":message()},
    {"title": "Dashboard", "icon": Icons.dashboard,"screen":Dashboard()},
    {"title": "Languages", "icon": Icons.language,'screen': Language_Screen()},
    {"title": "Subscription Management", "icon": Icons.subscriptions_outlined,"screen":notify()},
    {"title": "Feedback & Support", "icon": Icons.feedback_outlined,"screen": Help_screen()},
    {"title": "Logout", "icon": Icons.logout,"screen":Logout()},
  ];
  List icon = [
    "assets/images/ac1.png",
    "assets/images/ac2.png",
    "assets/images/ac3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFFFFF),
                  Color(0xffF2A4A4)
                ]
            )
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 310,
                ),
                Container(
                  height: 250, // Increased height for better spacing
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.red.shade300,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 150),
                          child: IconButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottom_Naviga(),
                              ),
                            );
                          }, icon:Icon(Icons.arrow_back,color: Color(0xff742B88),))
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: CircleAvatar(
                          child: Text('S',style: TextStyle(fontSize: 40),),
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45,right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Smart Global Solution",style:
                                GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("1122333444566",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16)),),
                                SizedBox(height: 20,width: 90,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      onPressed: (){}, child: Text("Active",style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 12,color: Colors.white)),)),
                                )
                              ],
                            ),
                            TextButton(onPressed: (){}, child: Text("View Full profile",style:GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Colors.blue))))

                          ],),
                      ),
                    ],),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: 350,
                    height: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.red.shade300,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: add.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 82,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color:Color(0xffFFB790)
                                      ),
                                      child:  Image.asset(icon[index]),),
                                    Text(add[index]["title"],style:
                                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12)),)
                                  ],
                                ),
                              )
                          );
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:3),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black,width: 1))
                        ),
                        child: ListTile(
                          leading: Icon(menu[index]["icon"], color: Colors.black, size: 20),
                          title: Text(menu[index]["title"]),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => menu[index]["screen"],
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

