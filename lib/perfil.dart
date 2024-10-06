import 'package:flutter/material.dart';
import 'qr_scanner_page.dart'; // Import the QRScannerPage

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Space for the profile picture
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Ensure you have a profile picture at this path
              ),
              const SizedBox(height: 20),
              // User name
              const Text(
                'Nombre de Usuario', // Add the user name here
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Personal information section
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Información Personal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Correo electrónico'), // Add email
                      Text('Teléfono:'), // Add phone number
                      // Add more personal information here
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // QR Scanner button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QRScannerPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Escanear QR'),
              ),
              const SizedBox(height: 20),
              // Routines button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Routines page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Rutinas'),
              ),
              const SizedBox(height: 20),
              // Reports/Log button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Reports/Log page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Reportes/Bitácora'),
              ),
              const SizedBox(height: 20),
              // Appointments/Schedule button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Appointments/Schedule page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Citas/Horario'),
              ),
              const SizedBox(height: 20),
              // Logout button
              ElevatedButton(
                onPressed: () {
                  // Logout logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}