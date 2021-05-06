import 'package:flutter/material.dart';

void main() => runApp(MyMuebleriaApp());

class MyMuebleriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Muebleria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //Ruta de ventanas

      routes: <String, WidgetBuilder>{
        "/inicio": (BuildContext context) => Inicio(),
        "/empresa": (BuildContext context) => Empresa(),
        "/productos": (BuildContext context) => Productos(),
        "/contacto": (BuildContext context) => Contacto(),
      },//Fin rutas
      home: Inicio()
    );//Fin MaterialApp
  }//Fin build
}//Fin muebleria


class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(
            title: Text('Empresa'),
          ),//Fin AppBar
          body: Center(
            child: Text(
              'Seccion Empresas',
            ),
          ),
        );//Fin Scaffold
  }//Fin widget
}//Fin Empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(
            title: Text('Productos'),
          ),//Fin AppBar
          body: Center(
            child: Text(
              'Seccion Productos',
            ),
          ),
        );//Fin Scaffold
  }//Fin widget
}//Fin Empresa

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          appBar: AppBar(
            title: Text('Contacto'),
          ),//Fin AppBar
          body: Center(
            child: Text(
              'Seccion Contactos',
            ),
          ),
        );//Fin Scaffold
  }//Fin widget
}//Fin Empresa

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          body: Container(
            padding: EdgeInsets.only(top:130 , bottom: 10, right:10, left:10),
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              image: DecorationImage(
                image: NetworkImage("https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/MicrosoftTeams-image.png"),
              alignment: Alignment.topCenter),
            ),
          ),//Fin Container
        );//Fin Scaffold
  }//Fin widget Inicio
}//Fin de Inicio