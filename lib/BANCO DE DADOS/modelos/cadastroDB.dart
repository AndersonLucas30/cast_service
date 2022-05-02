// ignore_for_file: file_names, camel_case_types, import_of_legacy_library_into_null_safe

import 'package:mongo_dart/mongo_dart.dart';

class User {
  
  final ObjectId id;
  final String nome;
  final int cnpjoucpf;
  final int nascimento;
  final String emailoucelular;
  final String senha;

  const User({ this.id,  this.nome, 
   this.cnpjoucpf,  this.nascimento,  this.emailoucelular,  this.senha});

Map<String, dynamic> toMap(){
  return {
    '_id': id,
    'nome': nome,
    'cnpjoucpf': cnpjoucpf,
    'nascimento': nascimento,
    'emailoucelular': emailoucelular,
    'senha': senha,
  };
}
User.fromMap(Map<String, dynamic> map)
:nome = map['nome'],
 id = map['_id'],
cnpjoucpf = map['cnpjoucpf'],
nascimento = map['nascimento'],
emailoucelular = map['emailoucelular'],
senha = map['senha'];
}