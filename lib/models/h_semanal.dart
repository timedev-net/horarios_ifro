import 'package:horarios_ifro/models/disciplina.dart';
import 'package:horarios_ifro/models/docente.dart';
import 'package:horarios_ifro/models/ambiente.dart';

class HSemanal {
  int id;
  String diaSemana;
  String periodo;
  Disciplina disciplina;
  Docente docente;
  Ambiente ambiente;

  HSemanal(this.id, this.diaSemana, this.periodo, this.disciplina, this.docente,
      this.ambiente);
}
