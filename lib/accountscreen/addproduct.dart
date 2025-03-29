import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? _image;
  int selectedTab = 0;
  String? selectedItem;
  final List<String> items = ["Inventory Management", "Option 2", "Option 3", "Option 4"];
  final List<String> items1 = ["Select Category", "Option 2", "Option 3", "Option 4"];

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
        backgroundColor: Color(0xffFBF8F8),
    leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.arrow_back, color: Color(0xff742B88)),
    ),
    title: Text(
    "Add New Product",
    style: GoogleFonts.lato(fontSize: 16, color: Color(0xff742B88)),
    ),
    actions: [
    TextButton(
    onPressed: () {},
    child: Text(
    "Back to Home",
    style: GoogleFonts.lato(
    fontSize: 15,
    decoration: TextDecoration.underline,
    decorationColor: Color(0xff742B88),
    color: Color(0xff742B88),
    ),
    ),
    ),
    ],
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Tabs for Personal and Business Details
    Row(
    children: [
    Expanded(
    child: Image.asset('assets/images/addproduct.jpg'),
    ),
    Expanded(
    child: Text(
    "First sale, first step. Grateful for every moment of this new beginning, and excited for the future ahead!",
    ),
    ),
    ],
    ),
    SizedBox(height: 5),

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

    // Product Details
    Text(
    'Teatured Product Details',
    style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.purpleAccent)),
    ),
    SizedBox(height: 5),

    // Dropdown Menu
    DropdownButton<String>(
    value: selectedItem,
    hint: Text("Select an option"),
    icon: Icon(Icons.arrow_drop_down),
    isExpanded: true,
    style: TextStyle(color: Colors.black, fontSize: 16),
    items: items1.map((String item) {
    return DropdownMenuItem<String>(
    value: item,
    child: Text(item),
    );
    }).toList(),
    onChanged: (String? newValue) {
    setState(() {
    selectedItem = newValue!;
    });
    },
    ),

    SizedBox(height: 5),

    // Product Name
    CustomTextField(label: 'Enter Your Product Name'),
    SizedBox(height: 5),

    // Product Description
    Text(
    'Description of Product',
    style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.purpleAccent)),
    ),
    SizedBox(height: 5),
    CustomTextField(label: 'Enter here'),
    SizedBox(height: 5),

      // Product Specification
      Text(
        'Specification of Product',
        style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.purpleAccent)),
      ),
      SizedBox(height: 5),
      CustomTextField(label: 'Enter here'),
      SizedBox(height: 5),

      // Price and Category
      Row(
        children: [
          Expanded(
            child: CustomTextField(label: 'Set Price'),
          ),
          SizedBox(width: 10),
          Expanded(
            child: DropdownButton<String>(
              value: selectedItem,
              hint: Text("Select an option"),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              style: TextStyle(color: Colors.black, fontSize: 16),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue!;
                });
              },
            ),
          ),
        ],
      ),
      SizedBox(height: 5),

      // Shipping and Contact Details
      Text(
        'Shipping Detail And Contact Details ',
        style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.purpleAccent)),
      ),
      SizedBox(height: 5),
      CustomTextField(label: 'Enter here'),
      SizedBox(height: 5),

      // Upload Product Button
      Center(
        child: SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.upload)),
                Text(
                  'Upload Product',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
    ],
    ),
    ),
    ),
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

