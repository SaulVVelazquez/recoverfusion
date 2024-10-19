import 'package:flutter/material.dart';

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
              // Espacio para la foto de perfil
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Asegúrate de tener esta imagen
              ),
              const SizedBox(height: 20),
              // Nombre de usuario
              const Text(
                'Nombre de Usuario', // Coloca aquí el nombre del usuario
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Sección de información personal
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Información Personal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Correo electrónico'), // Coloca el correo aquí
                      Text('Teléfono:'), // Coloca el teléfono aquí
                      // Agrega más información personal si es necesario
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Botón de Rutinas
              ElevatedButton(
                onPressed: () {
                  // Navegar a la página de Rutinas
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
              // Botón de Reportes/Bitácora
              ElevatedButton(
                onPressed: () {
                  // Navegar a la página de Reportes/Bitácora
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
              // Botón de Citas/Horario
              ElevatedButton(
                onPressed: () {
                  // Navegar a la página de Citas/Horario
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
              // Botón de Cerrar sesión
              ElevatedButton(
                onPressed: () {
                  // Lógica para cerrar sesión
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
