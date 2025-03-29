import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class archi extends StatefulWidget {
  const archi({super.key});

  @override
  State<archi> createState() => _archiState();
}

class _archiState extends State<archi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coimbatore'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Architecture',
                      prefixIcon: Icon(Icons.search,color: Colors.purpleAccent,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purpleAccent),

                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Search',
                    style:
                    GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,color: Colors.white)),),
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
              ],
            ),
            SizedBox(height: 16),
            Text('Recent Search', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Wrap(
              spacing: 8,
              direction: Axis.horizontal,
              children:[
              Chip(
                label: Text('Bank Loans'),
                backgroundColor: Color(0xffFADDDD),
              ),
                Chip(
                  label: Text('Engineers'),
                  backgroundColor: Color(0xffFADDDD),
                ),
                Chip(
                  label: Text('Builders'),
                  backgroundColor: Color(0xffFADDDD),
                ),
                Chip(
                  label: Text('Promoters'),
                  backgroundColor: Color(0xffFADDDD),
                ),
                Chip(
                  label: Text('Architecture'),
                  backgroundColor: Color(0xffFADDDD),
                ),
                ]
            ),
            SizedBox(height: 16),
            Text('Recommended On Trueguide', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/1.png",
                      fit: BoxFit.fill,
                    ),                      Text('Builders'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/5.png",
                      fit: BoxFit.fill,
                    ),
                    Text('Engineers'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/3.png",
                      fit: BoxFit.fill,
                    ),                      Text('Brokers'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list),
            label: 'Features',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
