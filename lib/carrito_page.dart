import 'package:flutter/material.dart';

class Carta {
  final String nombre;
  final String info;
  final String urlImagen;
  Carta({required this.nombre, required this.info, required this.urlImagen});
}

class PantallaCarrito extends StatelessWidget {
  final List<Carta> misCartas = [
    Carta(
      nombre: 'Pikachu',
      info: 'Pokémon TCG - Base Set',
      urlImagen: 'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/SM75_LA_55.png',
    ),
    Carta(
      nombre: 'Mago Oscuro',
      info: 'Yu-Gi-Oh! - Duel Monsters',
      urlImagen: 'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/Drag%253Fn_blanco_de_ojos_azules.webp',
    ),
    Carta(
      nombre: 'Charizard',
      info: 'Pokémon TCG - Fire Type',
      urlImagen: 'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/SV3PT5_LA_48.png',
    ),
    Carta(
      nombre: 'Blue-Eyes Dragon',
      info: 'Yu-Gi-Oh! - Legend',
      urlImagen: 'https://raw.githubusercontent.com/VillaSarabia/imagenes-para-Flutter-6to-I-Fecha-11-Feb-2026/refs/heads/main/Foto_mago_oscuro.webp',
    ),
  ];

  PantallaCarrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A76C5),
        leading: const Icon(Icons.menu, color: Colors.white, size: 40),
        title: const Text('CARRITO', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 35),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF0D2C44), width: 2),
                color: const Color(0xFFE0E0E0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xFFCCCCCC),
                    child: Row(
                      children: const [
                        Icon(Icons.shopping_cart, size: 25),
                        SizedBox(width: 10),
                        Text('Compras', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: misCartas.length,
                      itemBuilder: (context, index) {
                        return ElementoCarrito(carta: misCartas[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _botonAzul(context, 'Comprar', () {}),
                        const SizedBox(width: 20),
                        _botonAzul(context, 'Volver', () {
                          Navigator.pop(context); // Acción de volver
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Información de la tienda', style: TextStyle(fontSize: 16)),
                _botonAzul(context, 'Tienda Física', () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _botonAzul(BuildContext context, String texto, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4A76C5)),
      child: Text(texto, style: const TextStyle(color: Colors.white)),
    );
  }
}

class ElementoCarrito extends StatelessWidget {
  final Carta carta;
  const ElementoCarrito({super.key, required this.carta});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              carta.urlImagen,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(carta.nombre, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(carta.info, style: const TextStyle(fontSize: 12, color: Colors.black54)),
              ],
            ),
          ),
          Row(
            children: const [
              Icon(Icons.add_circle_outline, color: Colors.black87),
              SizedBox(width: 10),
              Icon(Icons.remove_circle_outline, color: Colors.black87),
            ],
          ),
        ],
      ),
    );
  }
}