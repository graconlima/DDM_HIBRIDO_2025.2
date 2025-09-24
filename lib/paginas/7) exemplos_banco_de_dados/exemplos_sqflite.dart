import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //passo 1: definindo a estrutura do bd
  String sqlEstrutura = "CREATE TABLE pessoa(id INTEGER PRIMARY KEY, nome TEXT, CPF TEXT)";

  //passo 2: criando a base de dados
  Database bd;
  bd = await openDatabase(
      join(await getDatabasesPath(), 'dbPessoa'),
      onCreate: (bd, versao){return bd.execute(sqlEstrutura);},
      onUpgrade: (bd, versaoAntiga, novaVersao){},
      onDowngrade: (db, versaoAntiga, novaVersao) {},
      version: 1
  );

  //passo 4: inserindo uma pessoa
  //Pessoa joao = new Pessoa(null,'Joao','000.000.000-00');
  Pessoa joao = Pessoa(id: 1, nome: 'Um Joao', CPF: '000.000.000-00');

  bd.insert('pessoa', joao.mapeamento());

  //passo 5: atualizando um registro
  //Pessoa outroJoao = new Pessoa(2, 'Outro Joao', '000.000.000-00');
  Pessoa outroJoao = Pessoa(id: 2, nome: 'Outro Joao', CPF: '000.000.000-00');
  //bd.update('pessoa', outroJoao.mapeamento(), where: 'id=?', whereArgs: [outroJoao.id]);

  //passo 6: apagando
  //bd.delete('pessoa', where: 'nome = ?', whereArgs: ['Outro Joao']);

  //passo 7: resgatando todas as pessoas no banco
  List<Map<String, dynamic>> pessoas = await bd.query('pessoa');
  print(
      List.generate(
          pessoas.length,
              (i){return Pessoa (id: pessoas[i]['id'], nome: pessoas[i]['nome'], CPF: pessoas[i]['CPF']);}
      )
  );
}

//passo3: criando um modelo
class Pessoa{
  int id;
  String nome;
  String CPF;

  /*Pessoa(int id, String nome, String CPF){
    this.id = id; this.nome = nome; this.CPF = CPF;
  }*/
  Pessoa({this.id = 0, this.nome = "", this.CPF = ""});

  Map<String, dynamic> mapeamento(){
    return {'id':id, 'nome':nome, 'CPF':CPF};
  }

  //com toString mostra dados, antes de ter no terminal saia apenas: I/flutter (32433): [Instance of 'Pessoa', Instance of 'Pessoa']
  //so por adicionar o toString (sobrescrito): I/flutter (32433): [Pessoa{id: 1, nome: Joao, CPF: 000.000.000-00}, Pessoa{id: 2, nome: Joao, CPF: 000.000.000-00}, Pessoa{id: 3, nome: Joao, CPF: 000.000.000-00}]
  String toString() {
    return 'Pessoa{id: $id, nome: $nome, CPF: $CPF}';
  }
}
