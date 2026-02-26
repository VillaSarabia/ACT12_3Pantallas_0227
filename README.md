# myapp
## Prompt
Actúa como un desarrollador experto en Flutter. Genera el código para una aplicación de TCG (Trading Card Game) llamada "DeckTCG Store" organizada en 4 archivos distintos. El diseño debe ser minimalista, tipo boceto, con colores específicos.

1. Estructura de Archivos:

main.dart: Configura el MaterialApp con home: HomePage() y quita el banner de debug.

home_page.dart: Pantalla principal. AppBar azul con título centrado, icono de menú que navega a RegistroPage y carrito  que navega a PantallaCarrito. Incluye un banner principal con imagen de red y una grilla  de 2 columnas para productos usando un widget personalizado ProductCard.

carrito_page.dart: Pantalla de carrito. Usa una lista de objetos Carta . Diseño con un Container gris con bordes oscuros simulando una ventana de lista. Incluye botones "Comprar" y "Volver".

registro_page.dart: Pantalla de formulario. AppBar azul claro con bordes redondeados. Campos de texto con fillColor rojo claro y bordes muy redondeados. Al final, incluye una fila de botones circulares para "Más Info", "Productos" y "Tienda".
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
