import 'package:flutter/material.dart';
class BusinessDetailScreen extends StatelessWidget {
  const BusinessDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business Detail"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SectionHeader(title: "Personal Detail"),
              SectionHeader(title: "Business Detail"),
              LinearProgressIndicator(color: Colors.purple),
              FormFields(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12.0),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

class FormFields extends StatelessWidget {
  const FormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownField(label: "Month"),
        DropdownField1(label1: "Year"),
        TextFieldWithLabel(label: "Enter your Service"),
        TextFieldWithLabel(label: "Business Website"),
        TextFieldWithLabel(label: "Enter Email Address"),
        TextFieldWithLabel(label: "Social Media Links"),
        SizedBox(height: 10),
        ExpansionTile(
          title: Text("Add Categories"),
          children: [Text("Category selection here...")],
        ),
        ExpansionTile(
          title: Text("KYC Verification"),
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Upload KYC documents here..."),
            ),
          ],
        ),
        SizedBox(height: 230),
      ],
    );
  }
}

class DropdownField extends StatelessWidget {
  final String label;

  const DropdownField({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}

class DropdownField1 extends StatelessWidget {
  final String label1;

  const DropdownField1({required this.label1, super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label1),
      items: ['2023', '2024'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  const TextFieldWithLabel({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
