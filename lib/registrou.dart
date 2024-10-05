import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Space for the logo
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Image.asset(
                  'assets/logo.png', // Ensure you have a logo at this path
                  height: 100,
                ),
              ),
              // Text field for username
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              // Text field for email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              // Text field for password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              // Register button
              ElevatedButton(
                onPressed: () {
                  // Register logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Registrarse'),
              ),
              SizedBox(height: 20),
              // Login button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the login page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Iniciar sesión'),
              ),
              SizedBox(height: 20),
              // Forgot password button
              TextButton(
                onPressed: () {
                  // Forgot password logic
                },
                child: Text('Recuperar contraseña'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}