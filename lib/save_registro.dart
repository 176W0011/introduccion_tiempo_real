

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future <int> saveRegistro (Map registroTempo) async {
  final storage = new FlutterSecureStorage();
  var mensaje=418;
  String? data= await storage.read(key: "creado");
  if(data==null){
    List<dynamic> registros = <dynamic>[];
    registros.add(registroTempo);
    var info = jsonEncode(registros);
    await storage.write(key: "creado", value : info);
    mensaje=201;
  }else{
    var registroFind= await getRegistro(registroTempo);
    if(registroFind==404){
      var info= jsonDecode(data);
      List<dynamic> registros = <dynamic>[];
      registros=(info);
      registros.add(registroTempo);
      var infoFinal=jsonEncode(registros);
      await storage.write(key: 'creado', value: infoFinal);
      mensaje=201;
    }else{
      mensaje=418;
    }
  }
  return mensaje;
}

Future getListRegistros() async{
  String placas= await getplacas();
  final storage = new FlutterSecureStorage();
  String? data = await storage.read(key: "creado");
  var registros = jsonDecode(data!);
  var dataRegistro = [];
  for (var i =0; i< registros.length; i++){
    var item = registros[i];
    if(item["placas"]==placas){
      dataRegistro.add(item);
    }
  }
return dataRegistro;
}

getplacas() {
}


getRegistro (Map registroTempo) async{
  final storage = new FlutterSecureStorage();
  String? data = await storage.read(key: "creado");
  var mensaje = 404;
  var dataEncode = jsonDecode(data!);

  for (var i =0; i < dataEncode.length; i++){
    var item = dataEncode[i];

    if(registroTempo.toString() ==item.toString() ){
      mensaje= 418;
      return mensaje;
    }
  }
return mensaje;
}

deleteRegistro (Map registroTempo) async {
  final storage = new FlutterSecureStorage();
  String? data = await storage.read(key: "creado");
  var mensaje=0;
  var dataEncode =jsonDecode(data!);
  List<dynamic> registros = <dynamic>[];
  registros=(dataEncode);
  var _registroTempo=jsonEncode(registroTempo);
  for (var i = 0; i < dataEncode.length; i++){
    var item=jsonEncode(dataEncode[i]);
    if(_registroTempo.toString() ==item.toString()){
      mensaje=200;
      registros.removeAt(i);
      var infoFinal=jsonEncode(registros);
      await storage.write(key: "creado", value: infoFinal);
      return mensaje;
    }
  }
  return mensaje;
}