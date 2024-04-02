import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ScaffoldApp',
      debugShowCheckedModeBanner:false,
      home: MyHomePage(title: 'ScaffoldApp Home'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) :super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  Icon _corazon = Icon(Icons.favorite_border, color:Colors.white);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: (){_likedChange();}, //llamo a la funcion de abajo
              icon: _corazon)
         ],
        ), //AppBar
       ); //Scaffold
     }
    void _likedChange(){  //cambia de color el corazon si lo presiono
    setState((){
      if(_liked) {
        _corazon = Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      }else{
        _corazon = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    }
    );
    }


}