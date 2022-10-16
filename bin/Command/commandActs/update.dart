// ignore: file_names
import '../database.dart';
import '../command.dart';

// ignore: camel_case_types
class UpdateCommand implements command_Interface {
  database db;

  UpdateCommand(this.db){
    db = db;
  }

  @override
  void execute() {
    db.update();
  }
}