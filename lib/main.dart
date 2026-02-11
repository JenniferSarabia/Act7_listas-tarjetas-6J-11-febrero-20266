
import 'package:flutter/material.dart';

void main() => runApp(const AppLibreria());

class AppLibreria extends StatelessWidget {
  const AppLibreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Productos()
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Definimos la lista 'items' que te faltaba
    final List<Map<String, String>> items = [
      {
        'titulo': 'Sudaderas',
        'subtitulo': 'En esta tienda encuentra todas las sudaderas que necesitas',
        'img': 'https://raw.githubusercontent.com/JenniferSarabia/Imagenes-para-Flutter-6J-11-Febrero/refs/heads/main/imagen1.jpg'
      },
      {
        'titulo': 'Tenis',
        'subtitulo': 'En esta tienda encuentra todas los tenis que necesitas',
        'img': 'https://raw.githubusercontent.com/JenniferSarabia/Imagenes-para-Flutter-6J-11-Febrero/refs/heads/main/gettyimages-1390267183-612x612.jpg'
      },
      {
        'titulo': 'Camisas',
        'subtitulo': 'En esta tienda encuentra todas las camisas que necesitas',
        'img': 'https://raw.githubusercontent.com/JenniferSarabia/Imagenes-para-Flutter-6J-11-Febrero/refs/heads/main/depositphotos_3554179-stock-photo-shopping-in-a-causal-clothing.jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tienda de ropa Sarabia 6J',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 141, 196, 241),
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 14, 44, 212)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Color.fromARGB(255, 50, 190, 255)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: items.map((item) {
            return Card(
              color: const Color.fromARGB(255, 210, 217, 248),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item['img']!),
                  radius: 25,
                ),
                title: Text(
                  item['titulo']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  item['subtitulo']!,
                  style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 255, 0, 0)),
                  onPressed: () {},
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
