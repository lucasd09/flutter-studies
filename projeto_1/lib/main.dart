import 'package:flutter/material.dart';
import 'tarefa.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lista de Tarefas',
      home: ListaScreen()
    );
  }
}

class ListaScreen extends StatefulWidget {
  const ListaScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListaScreenState();
  }
}

class ListaScreenState extends State<ListaScreen> {

  List<Tarefa> tarefas = <Tarefa>[];
  TextEditingController controller = TextEditingController();

  void adicionaTarefa(String nome) { 
    setState(() {
      tarefas.add(Tarefa(nome));
    });  

    controller.clear();  
  }

  Widget getItem(Tarefa tarefa) { 

    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(tarefa.concluida ? Icons.check_box : Icons.check_box_outline_blank, size: 42.0, color: Colors.blueAccent,),
            padding: const EdgeInsets.only(left: 10.0, right: 30.0),
            onPressed: () { 
              setState((){ 
                tarefa.concluida = !tarefa.concluida;
              });
            }
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(tarefa.nome, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
              Text(tarefa.data.toString()) // Intl
            ],
          )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              onSubmitted: adicionaTarefa
            )
          ),
            Expanded(
              child:ListView.builder(
                itemCount: tarefas.length,
                itemBuilder: (_, indice) { 
                  return getItem(tarefas[indice]);
                },
              )
            ) 
        ],
      ),
    );
  }
}