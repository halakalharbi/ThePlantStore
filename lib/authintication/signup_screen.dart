import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to transparent
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/flower_background.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              height: 450,
              width: 350,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Color(0xFF90A955),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                        label: const Text("Email"),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: username,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        label: Text("Username"),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: phoneNumber,
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                      decoration: InputDecoration(
                        label: Text("Phone Number"),
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: Text(
                        "HAVE AN ACCOUNT? LOGIN",
                        style: TextStyle(
                          color: Color(0xFF90A955),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        String _email = email.text.toString();
                        String _password = password.text.toString();
                        String _username = username.text.toString();
                        String _phoneNumber = phoneNumber.text.toString();

                        if (_email.isNotEmpty && _password.isNotEmpty) {
                          Navigator.of(context).pushNamed('/home');
                        } else {
                          print("Error");
                        }

                        print("Email: $_email");
                        print("Password: $_password");
                        print("Username: $_username");
                        print("Phone Number: $_phoneNumber");

                        print("Done successfully");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF90A955)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(double.infinity, 50), // Adjust the width (double.infinity) and height (50) as needed
                        ),
                      ),
                      child: const Text("Go"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}