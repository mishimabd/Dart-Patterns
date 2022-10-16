import '../database.dart';
import '../command.dart';

class SelectCommand implements command_Interface {
  database db;

  SelectCommand(this.db){
    db = db;
  }

  @override
  void execute() {
    db.select();
  }
}