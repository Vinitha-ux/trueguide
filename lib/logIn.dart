import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottomnav/Bottom_Naviga.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("assets/images/aa.jpeg",
                height: 200,width: 200,fit: BoxFit.fill,),
            ),
            SizedBox(height: 10),
            Text(
              'Login',
                style: GoogleFonts.lato(textStyle:
                TextStyle(fontSize:24,fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false,
                        onChanged: (bool? value) {}),
                    Text("Remember me",style:
                    GoogleFonts.lato(textStyle:
                    TextStyle(fontSize: 15)),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?",
                    style: GoogleFonts.lato(textStyle:
                    TextStyle(fontSize: 15)),),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: SizedBox(height: 50,width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          Bottom_Naviga()),
                    );
                  },
                  child: Text("LOGIN",
                    style:
                  GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,color: Colors.white)),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor : Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50,
                        vertical: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child : Divider(thickness: 1,)),
                Text("or continue with"),
                Expanded(child : Divider(thickness: 1,)),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login With ",
                  style:GoogleFonts.lato(textStyle:
                  TextStyle(fontSize: 15,color: Colors.black),)),
                  TextButton(onPressed: (){}, child: Text("Mobile Number"))],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New Register?",style:
                GoogleFonts.lato(textStyle:
                TextStyle(fontSize: 15,color: Colors.black),),),
                  Text("please",style:
                  GoogleFonts.lato(textStyle:
                  TextStyle(fontSize: 15,color: Colors.black),),),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(onPressed: (){}, child:
              Text("T&C's Privacy policy",
                  style:GoogleFonts.lato(textStyle: TextStyle(fontSize:
                  12,color: Color(0xff0B2646),decoration:
                  TextDecoration.underline)))),
            )
          ],
        ),
      ),
    );
  }
}


