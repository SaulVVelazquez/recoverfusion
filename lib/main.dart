import 'package:flutter/material.dart';
import 'package:recoverfusion/registrou.dart' as register;
import 'package:recoverfusion/recuperacioncontraseña.dart'; // Import the new page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(), // Set LoginPage as the home screen
    );
  }
}

class LoginPage extends StatelessWidget {
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
              // Login button
              ElevatedButton(
                onPressed: () {
                  // Login logic
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
              // Register button
              ElevatedButton(
                onPressed: () {
                  // Register logic
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register.RegisterPage()));
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
              // Forgot password button
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PasswordRecoveryPage())); // Navigate to PasswordRecoveryPage
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