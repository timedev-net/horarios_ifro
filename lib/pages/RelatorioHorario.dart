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
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("Seg"),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("19:00h"),
                          Container(
                              margin: const EdgeInsets.all(8),
                              width: 150,
                              height: 150,
                              color: Color.fromARGB(255, 37, 103, 6),
                              child: Column(
                                children: [
                                  const Text("Prog. Orientado a Objetos"),
                                  const Text("Prof. Willians"),
                                  const Text("Lab 03"),
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("19:50h"),
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: 150,
                            height: 150,
                            color: Colors.teal[100],
                            child:
                                const Text("He'd have you all unravel at the"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("20:50h"),
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: 150,
                            height: 150,
                            color: Colors.teal[100],
                            child:
                                const Text("He'd have you all unravel at the"),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text("21:40h"),
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: 150,
                            height: 150,
                            color: Colors.teal[100],
                            child:
                                const Text("He'd have you all unravel at the"),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("Ter"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("Qua"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("Qui"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text("Sex"),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 150,
                        height: 150,
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
