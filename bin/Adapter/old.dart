import 'database.dart';

class OldDatabase implements db{
  @override
  void insert() {
    print('Inserting old data...');
  }

  @override
  void update() {
    print('Updating old data...');
  }

  @override
  void select() {
    print('Selecting old data...');
  }

  @override
  void delete() {
    print('Deleting old data...');
  }

}