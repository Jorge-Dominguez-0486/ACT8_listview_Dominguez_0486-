import 'package:flutter/material.dart';

void main() => runApp(const LibreriaApp());

class LibreriaApp extends StatelessWidget {
  const LibreriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Libreria cristiana",
      home: Partes(),
    );
  }
}

class Partes extends StatelessWidget {
  const Partes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'liberia cristiana Dominguez 6:J',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 252, 164, 164)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.book, color: Color.fromARGB(255, 255, 181, 181)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.language, color: Color.fromARGB(255, 255, 191, 191)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Elemento 1: Perfil
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: const Text('Mi Perfil de Libreria', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Configura tus datos y preferencias de lectura.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 2: Pagos
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.wallet, color: Colors.white),
              ),
              title: const Text('Métodos de Pago', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Gestiona tus tarjetas y facturas de compras.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 3: Notificaciones
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.notifications, color: Colors.white),
              ),
              title: const Text('Notificaciones', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Entérate de nuevos libros y ofertas especiales.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 10),

          // Elemento 4: Seguridad
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.lock, color: Colors.white),
              ),
              title: const Text('pago del libro', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text('Protege tu cuenta y revisa la privacidad.'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}