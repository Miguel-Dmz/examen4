// Importación de la librería Flutter
import 'package:flutter/material.dart'; // Inicio y fin en la misma línea

// Función principal
void main() {
  // Inicio función main
  runApp(MyApp());
} // Fin función main

// Definición de la clase principal MyApp
class MyApp extends StatelessWidget {
  // Inicio clase MyApp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Miguel Dominguez \n Mat:22308051281173'),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: CalzadoList(),
      ),
    );
  }
} // Fin clase MyApp

// Definición de la clase Calzado (Modelo de datos)
class Calzado {
  // Inicio clase Calzado
  final String idCalzado;
  final String nombreC;
  final String materialC;
  final int talla;
  final double precio;
  final String color;

  Calzado({
    required this.idCalzado,
    required this.nombreC,
    required this.materialC,
    required this.talla,
    required this.precio,
    required this.color,
  });
} // Fin clase Calzado

// Definición de la clase CalzadoList
class CalzadoList extends StatelessWidget {
  // Inicio clase CalzadoList
  final List<Map<String, dynamic>> calzados = [
    {
      // Inicio objeto calzado 1
      'ID_Calzado': '001',
      'Nombre_C': 'Zapatillas Deportivas',
      'Material_C': 'Cuero',
      'Talla': 42,
      'Precio': 120.0,
      'Color': 'Negro',
    }, // Fin objeto calzado 1
    {
      // Inicio objeto calzado 2
      'ID_Calzado': '002',
      'Nombre_C': 'Botas de Montaña',
      'Material_C': 'Gore-Tex',
      'Talla': 40,
      'Precio': 150.0,
      'Color': 'Marrón',
    }, // Fin objeto calzado 2
  ];

  @override
  Widget build(BuildContext context) {
    // Inicio método build
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: calzados.map((calzado) {
          return Container(
            // Inicio contenedor tarjeta
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Color(0xff002138),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ID: ${calzado['ID_Calzado']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Nombre: ${calzado['Nombre_C']}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Material: ${calzado['Material_C']}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Talla: ${calzado['Talla']}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Precio: \$${calzado['Precio'].toString()}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Color: ${calzado['Color']}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ); // Fin contenedor tarjeta
        }).toList(),
      ),
    );
  } // Fin método build
} // Fin clase CalzadoList
