import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ScaffoldApp',
      debugShowCheckedModeBanner:false,  //es para sacar el cartel de debug de la esquina
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

class _MyHomePageState extends State<MyHomePage> {
  Icon _corazon = Icon(Icons.favorite_border, color: Colors.white);
  bool _liked = false;
  int _elementoSeleccionado = 0; //0 porque comienza con el home
  String textoAVisualizar = '0: Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: () {
                _likedChange();
              }, //llamo a la funcion de abajo
              icon: _corazon)
        ],
      ),
      //AppBar
      drawer: Drawer(
        child: Column(
          children: const [
            DrawerHeader(
              child: Text(
                'Menú Drawer',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text('Enlace 1'),
            Text('Enlace 2'),
            Text('Enlace 3'),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textoAVisualizar,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton
          .extended( //boton circular de la esquina, el .extended es para agregar texto
          onPressed: () {
            _likedChange();
          },
          backgroundColor: Colors.red,
          icon: _corazon,
          label: const Text('Like!')
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
              label: 'Mi cuenta'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment,
                color: Colors.white,
              ),
              label: 'Estadisticas'
          ),
        ],
        currentIndex: _elementoSeleccionado,
        onTap: _itemPulsado, //cuando pulse que haga una accion
      ),
    );
  }

  void _likedChange() {
    //cambia de color el corazon si lo presiono
    setState(() {
      if (_liked) {
        _corazon = Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        _corazon = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }

  void _itemPulsado(int index) {
    setState(() {
      _elementoSeleccionado = index;
      switch (_elementoSeleccionado) {
        case 0:
          textoAVisualizar = '$_elementoSeleccionado : Home';
          break;
        case 1:
          textoAVisualizar = '$_elementoSeleccionado : Mi Cuenta';
          break;
        case 2:
          textoAVisualizar = '$_elementoSeleccionado : Estadisticas';
          break;
      }
    });
  }
}
