import 'adapter.dart';
import 'database.dart';
import 'old.dart';

void main() {
  db databaseOld = OldDatabase();
  db database = Adapter();
  database.select();
  database.update();
  databaseOld.insert();
  databaseOld.delete();
}
