import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../bottomnav/Bottom_Naviga.dart';
import 'bbusdetail.dart';

class personal extends StatefulWidget {
  const personal({super.key});

  @override
  State<personal> createState() => _PersonalState();
}

class _PersonalState extends State<personal> {
  File? _image;
  int selectedTab = 0;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tabs for Personal and Business Details
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        color: selectedTab == 0 ? Colors.grey : Colors.white,
                        child: Center(
                          child: Text(
                            'Personal Detail',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 1;
                        });
                        // Navigate to Business Detail screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BusinessDetail()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        color: selectedTab == 1 ? Colors.grey : Colors.white,
                        child: Center(
                          child: Text(
                            'Business Detail',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              // Personal Image Upload Section
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _image == null
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Drag and Drop your image here',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Icon(Icons.image, size: 50, color: Colors.purple),
                          SizedBox(height: 8),
                          Text(
                            'Maximum 5 MB file size',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )
                          : Image.file(_image!, fit: BoxFit.cover, height: 150, width: double.infinity),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: Text('Upload Image', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Your First Name'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Block / Last Name'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Email Address'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Mobile Number'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter your Address here'),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BusinessDetail()),
                      );
                    },
                    child: Text('Save Details', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BusinessDetailScreen extends StatefulWidget {
  const BusinessDetailScreen({super.key});

  @override
  State<BusinessDetailScreen> createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  File? _image;
  int selectedTab = 0;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        color: selectedTab == 0 ? Colors.grey : Colors.white,
                        child: Center(
                          child: Text(
                            'Personal Detail',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 1;
                        });
                        // Navigate to Business Detail screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BusinessDetailScreen()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        color: selectedTab == 0 ? Colors.grey : Colors.white,
                        child: Center(
                          child: Text(
                            'Business Detail',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Personal Image Upload Section
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _image == null
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Drag and Drop your image here',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Icon(Icons.image, size: 50, color: Colors.purple),
                          SizedBox(height: 8),
                          Text(
                            'Maximum 5 MB file size',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )
                          : Image.file(_image!, fit: BoxFit.cover, height: 150, width: double.infinity),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: Text('Upload Image', style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Your Business Name'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Block / Building Name'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter Street Name'),
              SizedBox(height: 16),
              CustomTextField(label: 'Landmark  '),
              SizedBox(height: 16),
              CustomTextField(label: 'Pincode'),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BusinessDetailScreen()),
                      );
                    },
                    child: Text('Save & Next', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Bottom_Naviga(),
    );
  }
}


class CustomTextField extends StatelessWidget {
  final String label;

  CustomTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
