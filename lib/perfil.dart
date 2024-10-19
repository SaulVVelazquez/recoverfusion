import 'package:flutter/material.dart';
import 'rutinas.dart';  // Importa la pantalla de Rutinas
import 'dart:io';
import 'package:image_picker/image_picker.dart'; // Asegúrate de agregar esta dependencia en tu pubspec.yaml

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image; // Variable para almacenar la imagen seleccionada

  Future<void> _chooseImage() async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white, // Cambia el color de fondo del modal
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)), // Redondea las esquinas superiores
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView( // Agrega un ScrollView para manejar el desbordamiento
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Permite que el modal tenga el tamaño adecuado
              children: [
                const Text(
                  'Selecciona una opción',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Tomar una foto'),
                  onTap: () async {
                    Navigator.pop(context); // Cierra el modal
                    final ImagePicker picker = ImagePicker();
                    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);

                    if (pickedFile != null) {
                      setState(() {
                        _image = File(pickedFile.path); // Actualiza la variable de la imagen
                      });
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo),
                  title: const Text('Subir desde galería'),
                  onTap: () async {
                    Navigator.pop(context); // Cierra el modal
                    final ImagePicker picker = ImagePicker();
                    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

                    if (pickedFile != null) {
                      setState(() {
                        _image = File(pickedFile.path); // Actualiza la variable de la imagen
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto del usuario
            Center(
              child: GestureDetector(
                onTap: _chooseImage, // Permitir al usuario seleccionar una foto al tocar la imagen
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null
                      ? FileImage(_image!) // Muestra la imagen seleccionada
                      : null, // No hay imagen predeterminada
                  child: _image == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.camera_alt, size: 30), // Icono de cámara
                            SizedBox(height: 4),
                            Text(
                              'Por favor ingrese su foto de perfil',
                              style: TextStyle(fontSize: 12, color: Colors.black54), // Texto en gris
                              textAlign: TextAlign.center, // Alineación centrada
                            ),
                          ],
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Información del usuario
            const Text(
              'Nombre de usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Opciones del perfil (Información Personal, Rutinas, Reportes, etc.)
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Información Personal'),
              onTap: () {
                // Aquí puedes navegar a la pantalla de información personal
              },
            ),
            ListTile(
              leading: const Icon(Icons.fitness_center),
              title: const Text('Rutinas'),
              onTap: () {
                // Navegar a la pantalla de Rutinas
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RutinasPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Reportes'),
              onTap: () {
                // Navegar a la pantalla de reportes (pendiente de crear)
              },
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Horario'),
              onTap: () {
                // Navegar a la pantalla de horario (pendiente de crear)
              },
            ),
            const SizedBox(height: 20),

            // Cerrar sesión
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para cerrar sesión
                },
                child: const Text('Cerrar sesión'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
