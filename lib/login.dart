import 'package:flutter/material.dart';
import 'package:samplebooks/Home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    double ScrHeigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: x == 1
            ? Column(children: [
                SizedBox(height: ScrHeigh * 0.2),
                ClipOval(
                    child: Image.asset("images/logo-png.png",
                        width: 200, height: 200)),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.remove_red_eye_outlined),
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "you dont have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        x = 0;
                      });
                    },
                    child: Text(
                      "Sign up now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Color.fromARGB(255, 0, 0, 200),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ])
            : Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 100, vertical: ScrHeigh * 0.25),
                child: Column(children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {});
                      } else {
                        if (value.length < 3) {
                          setState(() {});
                        } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          setState(() {});
                        } else {
                          setState(() {});
                        }
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'First name',
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {});
                      } else {
                        if (value.length < 3) {
                          setState(() {});
                        } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          setState(() {});
                        } else {
                          setState(() {});
                        }
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Last name',
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {});
                      } else {
                        if (value.length < 3) {
                          setState(() {});
                        } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          setState(() {});
                        } else {
                          setState(() {});
                        }
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'username',
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'example@example.com',
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        setState(() {});
                      } else {
                        if (value.length < 8) {
                          setState(() {});
                        } else if (!value.contains(RegExp(r'[a-zA-Z]'))) {
                          setState(() {});
                        } else {
                          setState(() {});
                        }
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      floatingLabelStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () async {},
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            x = 1;
                          });
                        },
                        child: Text(
                          "Sign_in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.blueAccent),
                        ),
                      )
                    ],
                  ),
                ]),
              ),
      ),
    );
  }
}
