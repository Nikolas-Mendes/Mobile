import 'package:cadastro_de_alunos/models/db_local.dart';
import 'package:cadastro_de_alunos/models/irepository.dart';
import 'package:cadastro_de_alunos/models/students.dart';

abstract class StudentRepository implements IRepository<Student> {
  late DBLocal dblocal;
}