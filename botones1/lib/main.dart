import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botones App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Botones'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String botonPulsado = 'Ninguno';  //inicializo la variable para usarla debajo del Text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title!),
      ),

      body:Center(
        child:Column(
        children:[
          Text(
            'El boton pulsado es: '
          ),
          Text(
              '$botonPulsado',
              style:TextStyle(
                color:Colors.red,
                fontWeight: FontWeight.bold,
                fontSize:30
              )
          ),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: _elevatedButtomPulsado,
                child: Text('ElevateButton'),
                style:ElevatedButton.styleFrom(
                  elevation:20,
                  backgroundColor :Colors.amber,
                  shadowColor: Colors.amberAccent
                ),
            ),
          Padding(padding: EdgeInsets.all(5)),    //para que se distancie un boton del otro
          TextButton(
              onPressed: _textButtomPulsado,
              child: Text('TextButtom'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor:Colors.white,  //color del texto
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
          ),
          IconButton(
            onPressed: ,
            Icon:
          )
        ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed:_floatingPulsado,
        tooltip:'Pulsame',
          child: Icon(Icons.add, color:Colors.white),
          backgroundColor: Colors.red,
    ),
    );
  }

  void _floatingPulsado(){         //el guion bajo es para ponerlo oculto
  _queBoton('flo');
  }

void _elevatedButtomPulsado(){
    _queBoton('ele');
}

void _textButtomPulsado(){
    _queBoton('ele');
}

  void _iconButtomPulsado(){         //el guion bajo es para ponerlo oculto
    _queBoton('ico');
  }

 void _queBoton(String boton){
    setState(() {
    switch(boton){
      case 'flo':
        botonPulsado= 'FloatingActionButton';  //cambia el nombre del boton pulsado
        break;
      case 'ele':
        botonPulsado='ElevateButton';
        break;
      case 'text':
        botonPulsado='TextButton';
      case 'ico':
        botonPulsado='IcoButton';
    }
    });
 }

}
