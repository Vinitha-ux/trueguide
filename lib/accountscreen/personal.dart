import 'package:flutter/material.dart';

class personal extends StatefulWidget {
  const personal({super.key});

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Detail'),
        //backgroundColor: Colors.purple,
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
                    child: Card(
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
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = 1;
                        });
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
                      Text(
                        'Drag and Drop your image here',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ), SizedBox(height: 8),
                      Icon(Icons.image, size: 50, color: Colors.purple),
                      SizedBox(height: 8),
                      Text(
                        'Maximum 5 MB file size',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Add your upload logic here
                        },
                        child: Text('Upload Image',style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            )),
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
              CustomTextField(label: 'Enter Mobile NUmber'),
              SizedBox(height: 16),
              CustomTextField(label: 'Enter your Address here'),
              SizedBox(height: 16),
              Center(
                child: SizedBox(width: 300,height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Saved Detail',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        )
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