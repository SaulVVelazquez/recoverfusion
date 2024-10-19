import 'package:flutter/material.dart';
import 'package:recoverfusion/registrou.dart' as register;
import 'package:recoverfusion/recuperacioncontraseña.dart';
import 'package:recoverfusion/perfil.dart'; // Import ProfilePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginPage(), // Set LoginPage as the home screen
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo/Image at the top
              Image.asset(
                'assets/logo.png', // Replace with your logo path
                height: 180,
              ),
              const SizedBox(height: 20),

              // Title: Inicio de sesión
              const Text(
                'Inicio de sesión',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 30),

              // Email field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),

              // Password field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Login logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Cambia a azul claro
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),

              // Divider or separator
              const Text('o'),

              const SizedBox(height: 10),

              // Forgot password and Register options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordRecoveryPage()),
                      );
                    },
                    child: const Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const register.RegisterPage()),
                      );
                    },
                    child: const Text(
                      'Registrarte',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Button to access the Profile page
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Ir a Perfil',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
