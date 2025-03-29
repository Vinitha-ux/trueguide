import 'package:flutter/material.dart';

import 'kyc3.dart';

class kyc2 extends StatefulWidget {
  const kyc2({super.key});

  @override
  State<kyc2> createState() => _kyc2State();
}

class _kyc2State extends State<kyc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KYC Verification'),
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
                  Icon(Icons.business, size: 40, color: Colors.purple),
                  SizedBox(width: 8),
                  Text(
                    'Smart Global',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Owner Name/Partner Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Business Proof Document',
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    value: 'Individual/Proprietor',
                    child: Text('Individual/Proprietor'),
                  ),
                  DropdownMenuItem(
                    value: 'Partnership Firm',
                    child: Text('Partnership Firm'),
                  ),
                  DropdownMenuItem(
                    value: 'Company',
                    child: Text('Company'),
                  ),
                ],
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Legal Name of Business',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Note:',
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• Personal Identification: Upload a valid ID (e.g., passport, driver\'s license).\n'
                    '• Proof of Address: Provide a recent document showing your name and address.',
              ),
              SizedBox(height: 16),
              Text(
                'Why KYC Matters:',
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• Security: Protects your account from unauthorized access.\n'
                    '• Compliance: Prevents illegal activities such as fraud.\n'
                    '• Privacy: Ensures your data is secure and handled with care.',
              ),
              SizedBox(height: 16),
              SizedBox(height: 16,width: 400,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Kyc3(),
                    ),
                  );
                }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,shape: RoundedRectangleBorder()),
                    child: Text("Save & Next",
                      style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),);
  }
}



