import 'package:flutter/material.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {'nombre': 'Manzana', 'precio': '3000', 'icono': Icons.apple},
      {'nombre': 'Pan', 'precio': '5000', 'icono': Icons.breakfast_dining},
      {'nombre': 'Leche', 'precio': '4500', 'icono': Icons.local_drink},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('MiniMarket')),
      // 1. Cambiamos ListView.builder por GridView.builder
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        // 2. Añadimos el gridDelegate exactamente como pide tu curso
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.3,
        ),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          final producto = productos[index];
          
          // 3. Reemplazamos el ListTile por el Card
          return Card(
            // Usamos Column para apilar el icono, nombre y precio
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
              children: [
                Icon(producto['icono'] as IconData, size: 36),
                const SizedBox(height: 8), // Espacio en blanco
                Text(
                  producto['nombre'].toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('\$${producto['precio']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}