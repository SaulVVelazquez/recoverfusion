import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Space for the profile picture
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Ensure you have a profile picture at this path
              ),
              SizedBox(height: 20),
              // User name
              Text(
                '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Personal information section
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Información Personal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(''),
                      Text(''),
                      // Add more personal information here
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // QR Scanner button
              ElevatedButton(
                onPressed: () {
                  // QR Scanner logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Escanear QR'),
              ),
              SizedBox(height: 20),
              // Routines button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Routines page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Rutinas'),
              ),
              SizedBox(height: 20),
              // Reports/Log button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Reports/Log page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Reportes/Bitácora'),
              ),
              SizedBox(height: 20),
              // Appointments/Schedule button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Appointments/Schedule page
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Citas/Horario'),
              ),
              SizedBox(height: 20),
              // Logout button
              ElevatedButton(
                onPressed: () {
                  // Logout logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}