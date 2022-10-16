import 'adapter.dart';
import 'database.dart';
import 'old.dart';

void main() {
  db databaseOld =  OldDatabase();

  databaseOld.insert();
  databaseOld.delete();
}



