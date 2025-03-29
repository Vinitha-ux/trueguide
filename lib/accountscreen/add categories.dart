import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class addcategories extends StatefulWidget {
  const addcategories({super.key});

  @override
  State<addcategories> createState() => _addcategoriesState();
}

class _addcategoriesState extends State<addcategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff854496),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {}, icon: Icon(Icons.arrow_back, color:
        Color(0xff854496),),
        ),
        title: Text('Add Category', style: GoogleFonts.lato(textStyle:
        TextStyle(fontSize: 12, color: Color(0xff854496))),),
      ),
      body: Column(
        children: [
          Text(
            'Categories Describe what your business is and the \nproduct and services your business offers. Please \nadd atleast one category for cutomers to find your \nbusiness.',
            style: TextStyle(color: Colors.black,),),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right:  510),
            child: Text('Select Categories',
              style: TextStyle(color: Colors.black),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('+ AGRO .',
                  style:
                  GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                      color: Colors.white)),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))
                    ),
                  ),),
                SizedBox(width: 10),
                SizedBox(width: 250, height: 30,
                  child: ElevatedButton(onPressed: () {},
                      child: Text('+ Beauty and personal Care .',
                        style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                            color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                        ),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 480),
            child: Text('Suggested Categories',
              style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Column(
              children: [
                SizedBox(width: 100,height: 30,
                  child: ElevatedButton(onPressed: () {},
                    child: Text('+ AGRO .',
                    style:
                    GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                        color: Colors.white)),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))
                      ),
                    ),),
                ),
                SizedBox(height: 10),
                SizedBox(width: 250, height: 30,
                  child: ElevatedButton(onPressed: () {},
                      child: Text('+ Beauty and personal Care .',
                        style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                            color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                        ),
                      )),
                ),
                SizedBox(height: 10),
                SizedBox(width: 150, height: 30,
                  child: ElevatedButton(onPressed: () {},
                      child: Text('+ Automatic .',
                        style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                            color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                        ),
                      )),
                ),
                SizedBox(height: 10),
                SizedBox(width: 200, height: 30,
                  child: ElevatedButton(onPressed: () {},
                      child: Text('+ Food Beverage .',
                        style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                            color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                        ),
                      )),
                ),
                SizedBox(height: 170),
                SizedBox(width: 250, height: 30,
                  child: ElevatedButton(onPressed: () {},
                      child: Text('Proceed',
                        style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,
                            color: Colors.white)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}