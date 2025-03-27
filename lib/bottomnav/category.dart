
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'architecture.dart';
import 'landpromoters.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category> {
  final List<Map<String, dynamic>> categories = [
    {"title": "Architecture"},
    {"title": "Land Promoters"},
    {"title": "Engineers"},
    {"title": "Real Estate Consultant"},
    {"title": "Builders"},
    {"title": "Contractors"},
    {"title": "Registration Services"},
    {"title": "Bank Loans (NBFC/PVT)"},
  ];
  List images =[
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            title:Text("Category",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Color(0xff742B88)))),
            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Color(0xff742B88))]
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xffFFFFFF),
                    Color(0xffF2A4A4),]
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical:10),
                    child: Container(height: 70,width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 44,
                            minHeight: 44,
                            maxWidth: 64,
                            maxHeight: 64,
                          ),
                          child: Image.asset(images[index], fit: BoxFit.cover),
                        ),
                        title: Text(categories[index]["title"],
                          style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Colors.black)),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                        onTap: (){
                          switch (categories[index]["title"]) {
                            case 'Architecture':
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => architecture()));
                              break;
                            case 'Land Promoters':
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => landpromoters()));
                              break;

                            default:
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Coming Soon...')));
                          }

                        },
                      ),
                    ),
                  );

                },
              ),
            ),
          ),
        )
    );
  }
}
