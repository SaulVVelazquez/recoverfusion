import 'package:flutter/material.dart';

class RutinasPage extends StatelessWidget {
  const RutinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas de Ejercicio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre del ejercicio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Espacio para la imagen del ejercicio
            Container(
              color: Colors.grey[300], // Solo para mostrar el espacio de la imagen
              height: 200,
              width: double.infinity,
              child: const Center(
                child: Text('Imagen del ejercicio aquí'),
              ),
            ),
            const SizedBox(height: 10),

            // Descripción del ejercicio
            const Text(
              'Descripción de cómo realizar dicho ejercicio.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Segunda sección: otra imagen y descripción
            const Text(
              'Nombre del ejercicio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Espacio para otra imagen del ejercicio
            Container(
              color: Colors.grey[300],
              height: 200,
              width: double.infinity,
              child: const Center(
                child: Text('Imagen del ejercicio aquí'),
              ),
            ),
            const SizedBox(height: 10),

            // Descripción del segundo ejercicio
            const Text(
              'Descripción de cómo realizar este otro ejercicio.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Ejercicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Medicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Regresar',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            // Navega hacia atrás (a la pantalla anterior)
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
