import 'command.dart';

class Developer {
  command_Interface? insert;
  command_Interface? delete;
  command_Interface? select;
  command_Interface? update;

  Developer(this.delete, this.insert, this.select, this.update);

  void insertData() {
    insert?.execute();
  }

  void updateData() {
    update?.execute();
  }

  void deleteData() {
    delete?.execute();
  }

  void selectData() {
    select?.execute();
  }
}

