import 'package:flutter/material.dart';
import 'package:recoverfusion/recuperacioncontraseña.dart'; // Import Password Recovery Page
import 'package:recoverfusion/qr_scanner_page.dart'; // Import QR Scanner Page

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alineación izquierda
            children: <Widget>[
              // Logo en la parte superior
              Center(
                child: Image.asset(
                  'assets/logo.png', // Asegúrate de que la imagen esté en esta ruta
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 20),

              // Título
              const Text(
                'Registrar nueva cuenta',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Campo de nombre
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Campo de correo
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Campo de contraseña
              TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),

              // Botón Escanear QR
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QRScannerPage()),
                  );
                },
                icon: const Icon(Icons.qr_code_scanner),
                label: const Text('Escanear QR'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botón de registro
              ElevatedButton(
                onPressed: () {
                  // Lógica de registro
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.blue, // Color del botón
                  foregroundColor: Colors.white, // Texto blanco
                ),
                child: const Text('Registrar'),
              ),
              const SizedBox(height: 10),

              // Enlaces de "Olvidaste tu contraseña" e "Iniciar sesión"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordRecoveryPage(),
                        ),
                      );
                    },
                    child: const Text('¿Olvidaste tu contraseña?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Iniciar sesión'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
