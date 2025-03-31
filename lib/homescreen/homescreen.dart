import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../accountscreen/account.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  State<Homepage1> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage1> {
  final List<Map<String, dynamic>> data = [
    {'image': 'assets/images/1.png', 'text': 'Architect'},
    {'image': 'assets/images/2.png', 'text': 'Land Promoters'},
    {'image': 'assets/images/3.png', 'text': 'Engineers'},
    {'image': 'assets/images/4.png', 'text': 'Real Estate Consultant'},
    {'image': 'assets/images/5.png', 'text': 'Builders'},
    {'image': 'assets/images/6.png', 'text': 'Contractors'},
    {'image': 'assets/images/7.png', 'text': 'Registration Services'},
    {'image': 'assets/images/8.png', 'text': 'Bank Loan (NBFC/PVT)'},
    {'image': 'assets/images/down.png', 'text': 'See More'}
  ];
  List colors = [
    Color(0xffCB7272),
    Color(0xffE58D2F),
    Color(0xff41A3A4),
    Color(0xff6441A4),
    Color(0xffA4416E),
    Color(0xff0D9DFD),
  ];
  List colors1 = [
    Color(0xff81BF5B),
    Color(0xffE19467),
    Color(0xff0D9DFD),
  ];
  final List<Map<String, dynamic>> name = [
    {"title": "Business Listing in our Website"},
    {"title": "Social Media Promotions"},
    {"title": "Special Day posters"},
    {"title": "Digital Business Card"},
    {"title": "Search Engine Optimisation for Business"},
    {"title": "Lead Generation & Enquiry "},
  ];
  List features =[
    "assets/images/spl1.png",
    "assets/images/spl2.png",
    "assets/images/spl3.png",
    "assets/images/spl4.png",
    "assets/images/spl5.png",
    "assets/images/spl6.png",
  ];
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/images/spl1.png', 'title': 'Business Listing \nin our Website', 'color': Colors.red},
    {'image': 'assets/images/spl2.png', 'title': 'Social Media \nPromotions', 'color': Colors.orange},
    {'image': 'assets/images/spl3.png', 'title': 'Special Day \nposters', 'color': Colors.green},
    {'image': 'assets/images/spl4.png', 'title': 'Digital Business \nCard', 'color': Colors.deepPurple},
    {'image': 'assets/images/spl5.png', 'title': 'Search Engine \nOptimisation \nfor Business ', 'color': Colors.pink},
    {'image': 'assets/images/spl6.png', 'title': 'Lead Generation \n& Enquiry ', 'color': Colors.blue},
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello....\nSmart Global',
          style: TextStyle(fontSize: 15, color: Colors.purple, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Top Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 380,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              data[index]['image'],
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(data[index]['text']),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Special Features',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: features.length,
                  itemBuilder: (BuildContext context, int index) {
                    return (Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(children: [
                          Container(
                            height:30,
                            width: 90,
                            child: Text(name[index]["title"],
                              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12,color: Colors.black)),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 44,
                                minHeight: 44,
                                maxWidth: 64,
                                maxHeight: 64,
                              ),
                              child: Image.asset(features[index], fit: BoxFit.cover),),
                          ),
                        ],),
                      ),
                    ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Register Your Business Today \n - It\'s Quick And Easy',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                        ),
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage('assets/images/exp.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 40),
                  child: Text(
                    'Increase Leads And Expand \nYour Reach Effortlessly ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Explore Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xFF81BF5B),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Are you an Architect? Showcase\n Your Expertise on True Guide',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              'Join as an Architect Now',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Image.asset('assets/images/exp1.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Home Screen")),
    );
  }
}
