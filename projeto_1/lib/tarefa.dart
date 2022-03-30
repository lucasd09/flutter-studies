class Tarefa {

  String nome;
  late DateTime data;
  late bool concluida;

  Tarefa(this.nome, ) {
    concluida = false;
    data = DateTime.now();
  }
}
