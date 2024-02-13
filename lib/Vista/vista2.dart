import 'package:aplicacion_1/Vista/vista3.dart';
import 'package:aplicacion_1/Vista/vista4.dart';
import 'package:flutter/material.dart';

class superpantalla extends StatelessWidget{
  const superpantalla({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menú"),),   
      body: Container(
        child: Center(
           child: Column(
               children: <Widget>[
                  ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => vista3()));
                  }, 
                  child: Text("Productos", style: TextStyle(fontSize: 25, color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => vistas4()));
                }, 
                child: Text("Compras", style: TextStyle(fontSize: 25, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                ),
            ],
       ),
        )
      
      ),
    );
  }
}