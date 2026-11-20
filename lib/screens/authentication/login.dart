import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_dna/screens/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8EBD2),

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login")
          ],
        ),
        backgroundColor: Color(0xFF183D2D),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: EdgeInsets.all(25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30),

            Text(
              "Welcome back, explorer.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF183D2D),
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Log in to pick up where your curiosity left off.",
            ),

            SizedBox(height: 30),

            Text("Email Address"),

            SizedBox(height: 8),

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            Text("Password"),

            SizedBox(height: 8),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty ||
                    passwordController.text.isEmpty) {

                  Get.snackbar(
                    "Error",
                    "Please fill all fields",
                  );

                } else {
                  Get.toNamed('/dashboard');
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF183D2D),
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),

              child: Text("Login"),
            ),

            SizedBox(height: 20),

            Center(
              child: Text("New here? Create your account"),
            ),

          ],
        ),
      ),
    );
  }
}