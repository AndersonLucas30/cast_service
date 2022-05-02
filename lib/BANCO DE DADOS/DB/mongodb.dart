// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print, null_argument_to_non_null_type, import_of_legacy_library_into_null_safe

import 'package:castservice/BANCO DE DADOS/modelos/cadastroDB.dart';
import 'package:castservice/BANCO%20DE%20DADOS/utilidades/constantes.dart';
import 'package:mongo_dart/mongo_dart.dart';



class MongoDatabase{
  static var db, userCollection;


  static connect() async{
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future <List<Map<String, dynamic>>> getDocuments() async {
    try{
      final cad = await  userCollection.find().toList();
      return  cad;
    } catch (e){
      print(e);
      return Future.value();
    }
  }
  static insert(User user) async {
    await userCollection.insertAll([user.toMap()]);
  }

  static update(User user) async {
    var u = await userCollection.findOne({"_id": user.id});
    u["nome"] = user.nome;
    u["cnpjoucpf"] = user.cnpjoucpf;
    u["nascimento"] = user.nascimento;
    u["emailoucalular"] = user.emailoucelular;
    u["senha"] = user.senha;
    await userCollection.save(u);
  }

  static delete(User user) async {
    await userCollection.remove(where.id(user.id));
  }

}