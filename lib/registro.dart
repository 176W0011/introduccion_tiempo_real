
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:introducciontiemporeal/save_registro.dart';
class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}
class _RegistroState extends State<Registro>{
  @override
  void initState(){
    super.initState();
    _saveCurrentRoute("/Registro");
  }

  _saveCurrentRoute(String lastRoute) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('LastRoute', lastRoute);
  }



  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTRO'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                const Text ('REGISTRO CASETA', style: TextStyle(fontSize: 40)),
                const SizedBox(height: 25),
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Placas')),
                    DataColumn(label: Text('Nombre completo')),
                    DataColumn(label: Text('Código SAP')),
                    DataColumn(label: Text('Empresa')),
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Fecha y hora')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Aceptar(context),
                    SizedBox(width: 25),
                    MaterialButton(
                        child: const Text("BORRAR"),
                        minWidth: 200.0,
                        height: 35,
                        color: Colors.blueGrey,
                        onPressed: (){
                          print ("BORRAR");
                          Borrar(context);
                          setState(() {

                          });

                        }),

                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}
Borrar(BuildContext context){
  showDialog (
    context: context,
    barrierDismissible: false,
    builder:(BuildContext context){
      return AlertDialog(
        title: const Text("AVISO"),
        content: const Text("¿Se eliminara el registro de la tabla"),
        actions: [
          TextButton(
              child: const Text("Cancelar"),
              onPressed: (){
                Navigator.of(context).pop();
              }),
          TextButton(
            child: const Text("Borrar"),
            onPressed: (){
            // setState(() {
              // if(deleteRegistro(values[i]) == 200) {
                // values.removeAt(i);
               //}
               //Scaffold.of(context)(
                 //  SnackBar(content: Text('SE ELIMINO EL REGISTRO')));
            // })
            },
          )
        ],
      );
    },
  );
}


Aceptar (BuildContext context) {
  return Container(

    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)),

    child: MaterialButton(

      child: const Text("ACEPTAR",
        style: TextStyle(color: Colors.black),),
      onPressed: () {
        print("ESTAS REGISTRADO :)");
      },
    ),
  );
}



