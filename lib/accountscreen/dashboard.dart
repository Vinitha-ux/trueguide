import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final List<Color> colors = const [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.blueAccent,
  ];

  final List<String> text = [
    'Enquiries Received',
    'Lead Generated',
    'Number of Views',
    'Mini Website Visits',
  ];

  final List<String> images = [
    'assets/images/dash1.png',
    'assets/images/dash2.png',
    'assets/images/dash3.png',
    'assets/images/dash4.jpg',
  ];

  final List<String> views = [
    '100',
    '055',
    '100',
    '100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.purple),
        title: Text(
          "Dashboard",
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.purple,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            _buildInsightsTitle(),
            _buildGrid(),
            _buildReviewsTitle(),
            _buildCustomerReviewSection(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "S",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            "Smart Global",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildInsightsTitle() {
    return const Padding(
      padding: EdgeInsets.only(right: 160),
      child: Text(
        "My Business Insights",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildGrid() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: colors.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2,
        ),
        itemBuilder: (context, index) {
          return _buildGridItem(index);
        },
      ),
    );
  }

  Widget _buildGridItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: colors[index],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50,
                child: Image.asset(images[index],fit: BoxFit.fill,)),
            Text(
              text[index],
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text(
              views[index],
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewsTitle() {
    return const Padding(
      padding: EdgeInsets.only(right: 100),
      child: Text(
        "Customer Rating & Reviews",
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _buildCustomerReviewSection() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
    child: Container(
    height: 100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    border: Border.all(),
    ),
    child: Row(
    children: [
    Container(
    width: 100,
    decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    ),
    color: Colors.red,
    ),
    child: Image.asset(
    'assets/images/dash5.png',
    fit: BoxFit.fill,
    ),
    ),
      const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Ratings & Reviews',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Average rating (e.g., ★★★★☆) and the ',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'number of reviews.',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
      const Icon(Icons.arrow_forward_ios),
    ],
    ),
    ),
    );
  }
}
