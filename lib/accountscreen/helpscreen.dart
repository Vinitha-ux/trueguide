import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help_screen extends StatefulWidget {
  const Help_screen({super.key});

  @override
  State<Help_screen> createState() => _Help_screenState();
}

class _Help_screenState extends State<Help_screen> {
  final List<Map<String, dynamic>> help = [
    {"title": "Help Center","subtitle":"Smart Global ","icon":Icons.support_agent_outlined},
    {"title": "FAQs","subtitle":"Find the frequently asked question here","icon":Icons.quiz_outlined},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBF8F8),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Color(0xff742B88),)),
        title: Text("Help",style: GoogleFonts.lato(fontSize: 16,color: Color(0xff742B88)),),
        actions: [
          TextButton(onPressed: (){}, child: Text("Back to Home",style: GoogleFonts.lato(fontSize: 15,decoration: TextDecoration.underline,decorationColor:Color(0xff742B88) ,color:Color(0xff742B88) ),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Text("Help & Support",style: GoogleFonts.lato(fontSize: 32,color: Colors.black),),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text("Let’s take step ahead and help you better.",style: GoogleFonts.lato(fontSize: 13,color: Color(0xff7D7D7D)),),
          ),
          Expanded(child: ListView.builder(
              itemCount: help.length,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black,width: 1))
                  ),
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(help[index]["icon"],size: 30,color:Color(0xff742B88),),
                          title: Text(help[index]["title"],style: GoogleFonts.lato(fontSize: 15),),
                          subtitle: Text(help[index]["subtitle"],style: GoogleFonts.lato(fontSize: 15,color:Color(0xff7D7D7D)),),
                          trailing: Icon(Icons.arrow_forward_ios)
                      )
                    ],
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