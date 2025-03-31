import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Language_Screen extends StatefulWidget {
  const Language_Screen({super.key});

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  String selectedLanguage = 'English';
  final List<String> languages = [
    'English',
    'தமிழ்',
    'हिन्दी',

  ];
  List subtitle =[
    'English',
    'Tamil',
    'Hindi'
  ];

  List text=[
    'A',
    'த',
    'िन'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
        title: Text("Select Language",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Colors.purple)),),
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Container(height: 200,width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/language.png"),fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10),
            Text("Select Language",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            SizedBox(height: 10),
            Text("True Guide supports multiple languages to enhance your experience. Please select your preferred language to continue.",style: GoogleFonts.lato(fontSize: 12,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(

                        bottom: BorderSide(color: Colors.black,
                            width: 0.50),
                      ),
                    ),
                    child: ListTile(
                      leading: Container(height: 80,width: 80,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xffEAECF9),
                          child: Text(text[index],style: GoogleFonts.lato(fontSize: 30),),
                        ),),
                      title: Text(
                        languages[index],
                        style: GoogleFonts.lato(fontSize: 20),
                      ),
                      subtitle: Text(subtitle[index],style: GoogleFonts.lato(fontSize: 15,color: Color(0xff6F6666)),),
                      trailing: selectedLanguage == languages[index]
                          ? Icon(Icons.check_circle, color: Colors.purple)
                          : Icon(Icons.circle_outlined, color: Colors.grey),
                      onTap: () {
                        setState(() {
                          selectedLanguage = languages[index];
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}