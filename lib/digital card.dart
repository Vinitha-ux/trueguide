import 'package:flutter/material.dart';

class digitalcard extends StatefulWidget {
  const digitalcard({super.key});

  @override
  State<digitalcard> createState() => _digitalcardState();
}

class _digitalcardState extends State<digitalcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color:Colors.purpleAccent),),
        title: Text('My Digital Card',style: TextStyle(color: Colors.purpleAccent,fontSize: 15),),
      ),
    );
  }
}