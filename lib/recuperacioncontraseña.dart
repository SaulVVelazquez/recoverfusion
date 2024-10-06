import 'package:flutter/material.dart';
import 'package:recoverfusion/registrou.dart'; // Import the RegisterPage

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

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
                margin: const EdgeInsets.only(bottom: 40),
                child: Image.asset(
                  'assets/logo.png', // Ensure you have a logo at this path
                  height: 100,
                ),
              ),
              // Text field for email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              // Recover password button
              ElevatedButton(
                onPressed: () {
                  // Password recovery logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Recuperar contraseña'),
              ),
              const SizedBox(height: 20),
              // Back to login button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the login page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 20),
              // Register button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage())); // Navigate to RegisterPage
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}