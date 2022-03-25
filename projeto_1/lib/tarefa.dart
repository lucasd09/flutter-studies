class Tarefa {

  int index;
  String nome;
  late DateTime data;
  late bool concluida;

  Tarefa(this.nome, this.index) {
    concluida = false;
    data = DateTime.now();
  }
}
