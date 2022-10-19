
class Caseta extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ingreso de datos')
      ),
      body: Center(
        child: Column(
          children: [
            _placasTextField(),
            _nombreTextField(),
            _apPaternoTextField(),
            _apMaternoTextField(),
            _codSapTextField(),
            _empresaTextField(),
            _Confirmar(),
            _Cancelar(),

          ],
        ),
      ),
    );
  }

  _placasTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon(Icons.directions_car, color: Colors.black,),
                  labelText: "Escribe el numero de placa",
                  helperText: "Ejemplo ZGH-31-87"
              ),
            ),
          );
        }
    );
  }

  _nombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black,),
                labelText: "Nombre o nombres",
              ),
            ),
          );
        }
    );
  }

  _apPaternoTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black,),
                labelText: "Apellido Paterno",
              ),
            ),
          );
        }
    );
  }

  _apMaternoTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.black,),
                labelText: "Apellido Materno",
              ),
            ),
          );
        }
    );
  }

  _codSapTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon(Icons.airport_shuttle, color: Colors.black,),
                  labelText: "Ingresa el codigo SAP",
                  helperText: "MWR458"

              ),
            ),
          );
        }
    );
  }


  _empresaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon(Icons.airport_shuttle, color: Colors.black,),
                  labelText: "Ingresa el nombre de tu empresa",
                  helperText: "FEMSA"

              ),
            ),
          );
        }
    );
  }

  _Confirmar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
      child: ElevatedButton(
        onPressed: () {
          print("Confirmar");
        },
        child: Text("Confirmar",
          style: TextStyle(color: Colors.black),),
      ),
    );
  }


  _Cancelar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
      child: ElevatedButton(
        onPressed: () {
          print("Cancelar");
        },
        child: Text("Cancelar",
          style: TextStyle(color: Colors.black),),
      ),
    );
  }

}


