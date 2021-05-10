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
        }, //Fin rutas
        home: Inicio()); //Fin MaterialApp
  } //Fin build
} //Fin muebleria

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
      ), //Fin AppBar
      body: Center(
        child: Text(
          'Seccion Empresas',
        ),
      ),
    ); //Fin Scaffold
  } //Fin widget
} //Fin Empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ), //Fin AppBar
      body: Center(
        child: Text(
          'Seccion Productos',
        ),
      ),
    ); //Fin Scaffold
  } //Fin widget
} //Fin Empresa

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
      ), //Fin AppBar
      body: Center(
        child: Text(
          'Seccion Contactos',
        ),
      ),
    ); //Fin Scaffold
  } //Fin widget
} //Fin Empresa

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/Luhhii/mis_imagenes/main/MicrosoftTeams-image.png"), alignment: Alignment.topCenter)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/inicio");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("INICIO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                      ) //fin de padding
                    ] //fin de widget
                  ), //fin de columun
                  Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/empresa");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("EMPRESA", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ),//r1 columna 2
              ], //fin de widget
                
            ), //fin de fila
          ], //fin de widget
        ), //fin de column child //fin de box decoration
      ), //fin de body center
    ); //fin de scaffold
  } //fin de widget
} //fin de clase inicio
