//Exemplo 1 - classes e instancias
/*class Pessoa{
  String nome = "";
}

void main(){
  Pessoa p = new Pessoa();
  p.nome = "Joao";
  print(p.nome);
}*/

//Exemplo 2 - métodos e visibilidade
/*class Pessoa{
  String _nome = "";

  //metodos modificadores
  void set nome(String nome){
    _nome  = nome;
  }

  //metodos de acesso
  String get nome{
    return _nome;
  }
}

void main(){

  Pessoa maria = new Pessoa();
  maria.nome = "Maria de Jesus";

  print("O nome da pessoa e: ${maria.nome}");
}*/

//Exemplo 3 - construtores
/*class Pessoa{
  String _nome = "";

  Pessoa(String nome){
   _nome = nome;
  }

  //Pessoa(this._nome);

  //metodos modificadores
  set nome(String nome){
    _nome  = nome;
  }

  //metodos de acesso
  String get nome{
    return _nome;
  }
}

void main(){
  Pessoa maria = Pessoa("Joao");
  maria.nome = "Maria de Jesus";

  print("O nome da pessoa e: ${maria.nome}");
}*/

//Exemplo 4 - construtores 2
/*class Pessoa{
  String nome = "";

  Pessoa({required this.nome});

  //metodos modificadores
  set nomeP(String nome){
    nome  = nome;
  }

  //metodos de acesso
  String get nomeP{
    return nome;
  }
}

void main(){
  Pessoa maria = Pessoa(nome: "Joao");
  maria.nome = "Maria de Jesus";

  print("O nome da pessoa e: ${maria.nome}");
}*/

//Exemplo 5 - Herança
/*class Aluno{
  String nome = "";
  double nota1 = 0.0;
  double nota2 = 0.0;

  Aluno(String nome, double nota1, double nota2){
    this.nome = nome; this.nota1 = nota1; this.nota2 = nota2;
  }

  double media(){
    return (nota1+nota2)/2;
  }
}

class Tecnico extends Aluno{
  Tecnico(super.nome, super.nota1, super.nota2);
  @override
  double media() {
    return super.media();
  }
}

class Superior extends Aluno{
  Superior(super.nome, super.nota1, super.nota2);
  @override
  double media(){
    return (nota1 * 2 + nota2 * 3)/5;
  }
}

void main(){
  Aluno a1 = Tecnico("Ana", 4.0, 7.5);
  Aluno a2 = Superior("Beto", 4.0, 7.5);

  print("Media do aluno(a) ${a1.nome}: ${a1.media()}");
  print("Media do aluno(a) ${a2.nome}: ${a2.media()}");
}*/