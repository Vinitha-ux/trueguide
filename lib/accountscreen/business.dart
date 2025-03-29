import 'package:flutter/material.dart';

import '../homescreen/homescreen.dart';

class Buss extends StatefulWidget {
  const Buss({super.key});

  @override
  State<Buss> createState() => _BussState();
}

class _BussState extends State<Buss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage1()),
            );// Handle back button press
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/1.png', fit: BoxFit.cover),
            ),
            title: const Text('Business Name and Address'),
            subtitle: const Text('Smart Global'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/2.png', fit: BoxFit.cover),
            ),
            title: const Text('Business Contact Details'),
            subtitle: const Text('+91 1122334455'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/3.png', fit: BoxFit.cover),
            ),
            title: const Text('Business Website'),
            subtitle: const Text('www.smartglobal.com'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/4.png', fit: BoxFit.cover),
            ),
            title: const Text('Business Categories'),
            subtitle: const Text('Architect'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/5.png', fit: BoxFit.cover),
            ),
            title: const Text('Add Offers'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/6.png', fit: BoxFit.cover),
            ),
            title: const Text('Photos and Videos'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
        ],
      ),
    );
  }
}
