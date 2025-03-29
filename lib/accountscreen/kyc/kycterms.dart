
import 'package:flutter/material.dart';

class kycc2 extends StatefulWidget {
  const kycc2({super.key});

  @override
  State<kycc2> createState() => _kycc1State();
}

class _kycc1State extends State<kycc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KYC Terms & Conditions',
          style:
          TextStyle(fontWeight: FontWeight.bold,
              color: Colors.purple),),
        leading: Icon(Icons.arrow_back,color: Colors.purple,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KYC Process',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '. Documents Required: You must submit accurate and valid identification documents, which may include:',
              ),
              SizedBox(height: 8),
              Text(
                '. Government-issued ID (e.g., Aadhaar, PAN, Passport, Voter ID).',
              ),
              Text(
                '• Proof of Address (e.g., Utility Bill, Rent Agreement, Bank Statement).',
              ),
              Text(
                '• Business Registration Documents (e.g., GST Registration, Certificate of Incorporation, Trade License).',
              ),
              Text(
                '• Bank Account Proof for the business (e.g., canceled cheque, bank statement).',
              ),
              SizedBox(height: 8),
              Text(
                'Verification Process: TrueGuide reserves the right to verify the authenticity of the submitted documents and request additional information if necessary.',
              ),
              SizedBox(height: 16),
              Text(
                'Obligations of the User',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• All information and documents provided during the KYC process must be true, accurate, and up-to-date.',
              ),
              Text(
                '• Users are responsible for notifying TrueGuide of any changes to their KYC details (e.g., address, ownership, etc.).',
              ),
              Text(
                '• Failure to provide accurate information may result in suspension or termination of account access.',
              ),
              SizedBox(height: 16),
              Text(
                'Confidentiality of Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• TrueGuide ensures the confidentiality and security of the information provided during the KYC process.',
              ),
              Text(
                '• Your data will only be used for verification purposes and shared with regulatory authorities, if legally mandated.',
              ),
              SizedBox(height: 16),
              Text(
                'Rejection and Re-verification',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• TrueGuide reserves the right to reject incomplete or unverifiable KYC submissions.',
              ),
              Text(
                '• Periodic re-verification of KYC details may be required to ensure compliance with laws.',
              ),
              SizedBox(height: 16),
              Text(
                'Updates to Terms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'TrueGuide reserves the right to modify these KYC Terms and Conditions at any time. Changes will be notified through the app or email, and continued use of the platform constitutes acceptance.',
              ),
              SizedBox(height: 16),
              Text(
                'Contact Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'For any queries regarding the KYC process, users may contact:',
              ),
              Text(
                'Email: [support@trueguide.com]',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                'Phone: [+91-XXXXXXXXXX]',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
