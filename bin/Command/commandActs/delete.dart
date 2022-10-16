import '../command.dart';
import '../database.dart';

class DeleteCommand implements command_Interface {
  database db;

  DeleteCommand(this.db){
    db = db;
  }

  @override
  void execute() {
    db.delete();
  }
}


