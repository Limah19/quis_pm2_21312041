import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        body: Container(
          color: Colors.amber, // Set your desired background color here
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/a0/UNIVERSITASTEKNOKRAT.png',
                    width: 150.0,
                    height: 150.0,
                  ),
             Text(
                'UNIVERSITAS TEKNOKRAT INDONESIA',
                style: TextStyle(fontSize: 20),
              ),
                
               SizedBox(height: 50.0),
                  Card(
                    // Wrap the Username field with a Card
                    color:
                        Colors.green, // Set a white background for the Card
                    elevation:
                        2.0, // Add some elevation for a subtle shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 300.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: InputBorder.none, // Remove the border
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(
                    // Wrap the Password field with a Card
                    color:
                        Colors.redAccent, // Set a white background for the Card
                    elevation:
                        2.0, // Add some elevation for a subtle shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 300.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: InputBorder.none, // Remove the border
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggleObscure,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
              SizedBox(height: 20),
               Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [ Text(
                        'Forgot Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
              Text('klik disini',
                 style: TextStyle(
              color: Colors.red[900],fontWeight: FontWeight.bold
            ),
              ),]),
             
          SizedBox(height: 300),
                Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [ Text(
                        'developed by',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 5,),
              Text('Nur Muslimah(21312041)',
                 style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold
            ),
              ),]),
       ])),
      ),
    )));
  }
}
