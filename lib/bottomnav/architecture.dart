import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../accountscreen/personal.dart';
import 'Bottom_Naviga.dart';
import 'category.dart';

class Architecture extends StatefulWidget {
  const Architecture({super.key});

  @override
  State<Architecture> createState() => _ArchitectureState();
}

class _ArchitectureState extends State<Architecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>
                Bottom_Naviga()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Architecture",
          style: GoogleFonts.lato(
              fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              color: Colors.purple,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.grey,
            child: Popup(),
          ),
          Expanded(child: Items()),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                Text("Sort by"),
                SizedBox(width: 110),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close)),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(onPressed: () {}, child: Text('Location')),
                TextButton(onPressed: () {}, child: Text("Rating")),
                TextButton(onPressed: () {}, child: Text("Business type"))
              ],
            ),
          );
        },
      );
    }

    final List<String> filter = ['Sort by', 'Location', 'Rating', 'Business Type'];

    return Scaffold(
      body: Container(
        height: 60,
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filter.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _showAlertDialog(context);
                    },
                    child: Text(
                      filter[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor:
                    Colors.white),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<String> names = [
    "ASHOK.K.S",
    "VIJAYKUMAR",
    "ASHOK.K.S",
    "VIJAYKUMAR",
  ];
  List<String> field = [
    "KISHAANTH BUILDERS",
    "SRI VISHAKHA FIELDS",
    "KISHAANTH BUILDERS",
    "SRI VISHAKHA FIELDS",
  ];
  List<String> images = [
    'assets/images/svg1.jfif',
    'assets/images/svg2.png',
    'assets/images/svg1.jfif',
    'assets/images/svg2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: names.length, // Dynamically use the length of the list
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              switch (images[index]) {
                case 'assets/images/svg1.jfif':
                case 'assets/images/svg2.png':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Category())); // Replace Category with actual destination
                  break;
                default:
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Coming Soon...')));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(height: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                                style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.handshake, size: 10),
                                  SizedBox(width: 5),
                                  Text(
                                    'Architecture',
                                    style: GoogleFonts.lato(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded, size: 10),
                                  SizedBox(width: 1),
                                  Text(
                                    'Coimbatore, Tamil Nadu',
                                    style: GoogleFonts.lato(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                field[index],
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                              SizedBox(width: 19),
                              Icon(
                                Icons.arrow_outward,
                                size: 19,
                              )
                            ],
                          ),
                          Text(
                            'Verified Listing',
                            style: GoogleFonts.lato(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '05 Years in Business',
                            style: GoogleFonts.lato(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Property Serviced',
                            style: GoogleFonts.lato(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                          Text(
                            'Real Estate Development, Construction',
                            style: GoogleFonts.lato(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Plotted Development',
                            style: GoogleFonts.lato(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => personal()));
                                  },
                                  child: Text(
                                    'Call Now',
                                    style: GoogleFonts.lato(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(color: Colors.purple),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(100, 30),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Whatsapp',
                                    style: GoogleFonts.lato(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    minimumSize: Size(100, 30),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          );
        });
  }
}

