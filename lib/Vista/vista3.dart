import 'package:aplicacion_1/Controlador/Productos.dart';
import 'package:flutter/material.dart';

List<Productos> _productos = [
  Productos("Coca Cola", "17"),
  Productos("Sabritas", "15"),
  Productos("Maizena","16"),
  Productos("Jabón Zote","21.50"),
  Productos("Aceite", "20"),
  Productos("Tortillas", "14"),
];

class vista3 extends StatelessWidget{
  const vista3 ({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Productos"),),
       body: ListView.builder(
        itemCount: _productos.length,
        itemBuilder: (context,index){
          return ListTile( 
            title: Text(_productos[index].nombre),
            subtitle: Text("Precio: " + _productos[index].precio),
            leading: const Icon(
              Icons.check_circle_outline,
              color: Colors.green
            )
          );
        }
      ),   
    );
   }
}