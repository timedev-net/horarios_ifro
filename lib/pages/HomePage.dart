import 'package:horarios_ifro/components/ButtonMenu.dart';
import 'package:horarios_ifro/pages/FormularioDisciplina.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // final ButtonStyle style =
  //     ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonMenu(
                            title: 'Cadastro de Disciplinas',
                            rota: '/disciplina'),
                      ]),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonMenu(
                            title: 'Cadastro de Docentes', rota: '/docente'),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonMenu(
                            title: 'Cadastro de Ambientes', rota: '/ambiente'),
                      ]),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonMenu(
                            title: 'Cadastro de Horários', rota: '/horario'),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonMenu(
                            title: 'Relatórios dos Horários Semanais',
                            rota: '/relatorio'),
                      ]),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
