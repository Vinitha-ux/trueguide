import 'package:flutter/material.dart';

class kycc3 extends StatefulWidget {
  const kycc3({super.key});

  @override
  State<kycc3> createState() => _kycc3State();
}

class _kycc3State extends State<kycc3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KYC Verification',
          style:
          TextStyle(fontWeight: FontWeight.bold,
              color: Colors.purple),),
        leading: Icon(Icons.arrow_back,color: Colors.purple,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please enter the GST details of your business:',
              style: TextStyle(fontSize: 16,
                //fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 5),
            Text('GSTIN No / UIN of Register Customer'),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5),
            Text('Name as registered with GSTIN'),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Registered Address under GSTIN',
              style: TextStyle(fontSize: 16,
                //fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Pin Code',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'State of registration of GSTN',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                labelText: 'Pan Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 150),
            Center(child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder()),
                child: Text("Saved Detail",
                  style: TextStyle(color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
