import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:login_ui/ui/signupUi.dart';
import 'package:login_ui/widgets/gradientButton.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.08),
                ),
                SizedBox(height: width * 0.01),
                Text(
                  'Sign in To Continue!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.06,
                      color: Colors.grey),
                ),
                SizedBox(height: width / 4),
                TextField(
                  cursorColor: Color(0xFFFA588F),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFA588F)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email Id',
                    labelStyle: TextStyle(
                      color: Color(0xFFFA588F),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.03,
                ),
                TextField(
                  cursorColor: Color(0xFFFA588F),
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFA588F)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFFFA588F),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.010,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: width * 0.030, fontWeight: FontWeight.w500),
                    ),
                    onTap: () => print('Forgot Password Clicked'),
                  ),
                ),
                SizedBox(
                  height: width * 0.10,
                ),
                GradientButton(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp())),
                  width: width,
                  height: width * 0.10,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      // Color(0xFFFA578E),
                      // Color(0xFFFDA88E),
                      Colors.pink,
                      Colors.orange,
                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.05,
                ),
                GradientButton(
                  borderRadius: BorderRadius.circular(10.0),
                  width: width,
                  height: width * 0.10,
                  onPressed: () => print('connect with Facebook'),
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.center,
                      colors: [
                        Colors.grey,
                        Color(0xFFEBEEF5),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Entypo.facebook_squared,
                        color: Colors.blue[900],
                      ),
                      Text(
                        'Connect with Facebook',
                        style: TextStyle(
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I'm a new user,",
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                    GestureDetector(
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                            fontSize: width * 0.04,
                            color: Color(0xFFFA578E),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp())),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
