import 'package:flutter/material.dart';
import '../models/disciplina.dart';

class RelatorioHorario extends StatefulWidget {
  const RelatorioHorario({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RelatorioHorario> createState() => _FormularioState();
}

class _FormularioState extends State<RelatorioHorario> {
  final disciplina_name = TextEditingController();
  // final email = TextEditingController();

  List<Disciplina> disciplinas = [];
  // List<Disciplina> disciplinas = [Disciplina(1, 'POO')];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    print(args);
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: disciplina_name,
                    decoration: InputDecoration(
                      labelText: 'Nome da RelatorioHorario',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text('Salvar'),
                  onPressed: () {
                    // print('Nome: ${task_name.text}');

                    disciplinas.add(Disciplina(1, disciplina_name.text));
                    setState(() {});
                    // print(tasks[0].description);
                  },
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   child: const Text('Go back!'),
                // ),
                ElevatedButton(
                  onPressed: () {
                    disciplinas.removeLast();
                    setState(() {});
                  },
                  child: const Text('Remover'),
                ),
                Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: disciplinas.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(disciplinas[index].nome),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
