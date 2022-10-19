

import 'package:flutter/material.dart';
import 'package:introducciontiemporeal/registro.dart';
void main() {
  runApp (const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Ventana(context),
    );

  }
}
class Ventana  extends StatelessWidget{

  const Ventana(BuildContext context, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrate"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _fondo(),
            const Text(
              'Bienvenido a la Caseta',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.black),
            ),
            FloatingActionButton(

              child: const Icon(Icons.add),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Caseta(),
                ));
              },
            ),
          ],
        ),
      ),
    );

  }
  _fondo(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 500.0,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage('assets/aduana.jpg'),
              fit: BoxFit.cover
          ),
        ),
      ),
    );

  }
}


class Caseta extends StatelessWidget {
  const Caseta({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ingreso de datos')
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage("assets/barco.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            _placas(),
            const SizedBox(height: 25.0),
            _nombre(),
            const SizedBox(height: 25.0),
            _apPaterno(),
            const SizedBox(height: 25.0),
            _apMaterno(),
            const SizedBox(height: 25.0),
            _codSap(),
            const SizedBox(height: 25.0),
            _empresa(),
            const SizedBox(height: 25.0),
            Row(
              children: [
                _Confirmar(context),
                _Cancelar(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container _placas() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 80.0),
      margin: const EdgeInsets.symmetric(horizontal: 80.0),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          icon: Icon(Icons.directions_car, color: Colors.black,),
          hintText: "Numero de placa",
          hintStyle: (TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
Container _nombre() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 80.0),
    margin: const EdgeInsets.symmetric(horizontal: 80.0),
    child:  TextFormField(
      style: const TextStyle(fontSize: 20),
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        icon: Icon(Icons.person, color: Colors.black,),
        hintText: "Nombre (s)",
        hintStyle: (TextStyle(fontSize: 20.0, color: Colors.black)),
      ),
    ),
  );
}


Container _apPaterno() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 80.0),
    margin: const EdgeInsets.symmetric(horizontal: 80.0),
    child: const TextField(
      style: TextStyle(fontSize: 20),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.person, color: Colors.black,),
        hintText: "Apellido Paterno",
        hintStyle: (TextStyle(fontSize: 20.0, color: Colors.black)),
      ),
    ),
  );
}

Container _apMaterno() {

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 80.0),
    margin: const EdgeInsets.symmetric(horizontal: 80.0),
    child: const TextField(
      style: TextStyle(fontSize: 20),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.person, color: Colors.black,),
        hintText: "Apellido Materno",
        hintStyle: (TextStyle(fontSize: 20.0, color: Colors.black)),
      ),
    ),
  );
}


Container _codSap() {

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 80.0),
    margin: const EdgeInsets.symmetric(horizontal: 80.0),
    child: const TextField(
      style: TextStyle(fontSize: 20),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.airport_shuttle, color: Colors.black,),
        hintText: "Codigo SAP",
        hintStyle: (TextStyle(fontSize: 20.0, color: Colors.black)),
      ),
    ),
  );
}

Container _empresa() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.symmetric(horizontal:80.0),
    margin: const EdgeInsets.symmetric(horizontal: 80.0),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.airport_shuttle, color: Colors.black,),
        hintText: "Nombre de la empresa",
        hintStyle: (TextStyle(fontSize:20.0, color: Colors.black)),
      ),
    ),
  );
}

_Confirmar (BuildContext context) {
  return Container(

    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 10),
    child: Align(
      alignment: Alignment.center,
      child: MaterialButton(
          color: Colors.purpleAccent,
          onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Registro()
          ));

        },
        child: const Text("Confirmar",
          style: TextStyle(color: Colors.black),),
      ),

    ),
  );
}

_Cancelar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)),
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Align(
      alignment: Alignment.center,
      child: MaterialButton(
        splashColor: Colors.blueAccent,
        color: Colors.yellow,
        onPressed: () {
          Navigator.pop(context);
          },

        child: const Text("Cancelar",
          style: TextStyle(color: Colors.black),
      ),
      ),
    ),
  );
}













