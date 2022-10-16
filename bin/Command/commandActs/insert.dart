// ignore: file_names
import '../database.dart';
import '../command.dart';

class InsertCommand implements command_Interface {
  database db;

  InsertCommand(this.db){
    db = db;
  }

  @override
  void execute() {
    db.insert();
  }
}