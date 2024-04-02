import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        title: 'Hola Mundo App' ,
        home:SafeArea(
            child: MyHelloWorldApp()
        ),
      )
  );

}class MyHelloWorldApp extends StatelessWidget{

  const MyHelloWorldApp({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
        child:Column(
          children:[
            Container(
              height:50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color:Colors.blueAccent),
              child:Row(
                children: const[
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.menu),
                      tooltip:'Boton de navegacion'
                  ), //el comentario en verde aparece en la app si lo mantenemos apretado
                  Expanded(
                      child: Text('App Hola Mundo')
                  ),
                  //boton de lupa
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search),
                      tooltip: 'Boton de busqueda'
                  ),
                ],
              ),
            ),
            const Expanded(
              child:Center(
                child:Text(
                  'Hola Mundo',
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          ],
        )
    );
  }
}
