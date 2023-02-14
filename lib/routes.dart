import 'pages/FormularioDisciplina.dart';
import 'pages/FormularioAmbiente.dart';
import 'pages/FormularioDocente.dart';
import 'pages/FormularioHorario.dart';
import 'pages/RelatorioHorario.dart';
import 'package:horarios_ifro/pages/HomePage.dart';

routes() {
  return {
    '/home': (context) =>
        HomePage(title: 'Horários de Turmas do Curso de ADS - IFRO'),
    '/disciplina': (context) =>
        FormularioDisciplina(title: "Cadastro de Disciplina - IFRO"),
    '/docente': (context) =>
        FormularioDocente(title: "Cadastro de Docente - IFRO"),
    '/ambiente': (context) =>
        FormularioAmbiente(title: "Cadastro de Ambiente - IFRO"),
    '/horario': (context) =>
        FormularioHorario(title: "Cadastro de Horário - IFRO"),
    '/relatorio': (context) =>
        RelatorioHorario(title: "Relatorio de Horário - IFRO"),
  };
}
