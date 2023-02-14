import 'package:flutter/material.dart';
import '../models/ambiente.dart';

class FormularioAmbiente extends StatefulWidget {
  const FormularioAmbiente({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FormularioAmbiente> createState() => _FormularioState();
}

class _FormularioState extends State<FormularioAmbiente> {
  final ambiente_name = TextEditingController();
  // final email = TextEditingController();

  List<Ambiente> ambientes = [];
  // List<ambiente> ambientes = [ambiente(1, 'POO')];

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
                    controller: ambiente_name,
                    decoration: InputDecoration(
                      labelText: 'Nome do Ambiente',
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text('Salvar'),
                  onPressed: () {
                    // print('Nome: ${task_name.text}');

                    ambientes.add(Ambiente(1, ambiente_name.text));
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
                    ambientes.removeLast();
                    setState(() {});
                  },
                  child: const Text('Remover'),
                ),
                Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                    itemCount: ambientes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(ambientes[index].nome),
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
