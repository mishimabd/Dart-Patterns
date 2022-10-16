import 'dartApplication.dart';
import 'database.dart';

class Adapter extends dartApplication implements db {
  @override
  void delete() {
    dropAllInfo();
  }

  @override
  void insert() {
    intoData();
  }

  @override
  void select() {
    chooseAll();
  }

  @override
  void update() {
    refreshData();
  }
}
