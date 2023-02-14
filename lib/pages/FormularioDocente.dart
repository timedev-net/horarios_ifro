import 'package:flutter/material.dart';
import '../models/docente.dart';

class FormularioDocente extends StatefulWidget {
  const FormularioDocente({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FormularioDocente> createState() => _FormularioState();
}

class _FormularioState extends State<FormularioDocente> {
  final docente_name = TextEditingController();
  // final email = TextEditingController();

  List<Docente> docentes = [];
  // List<Disciplina> docentes = [Disciplina(1, 'POO')];

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
                    controller: docente_name,
                    decoration: InputDecoration(
                      labelText: 'Nome do Docente',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text('Salvar'),
                  onPressed: () {
                    // print('Nome: ${task_name.text}');

                    docentes.add(Docente(1, docente_name.text));
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
                    docentes.removeLast();
                    setState(() {});
                  },
                  child: const Text('Remover'),
                ),
                Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: docentes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(docentes[index].nome),
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
