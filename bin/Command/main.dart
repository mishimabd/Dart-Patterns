import 'commandActs/Delete.dart';
import 'commandActs/Update.dart';
import 'commandActs/insert.dart';
import 'commandActs/select.dart';
import 'database.dart';
import 'developer.dart';

void main() {
  late database db = database();
  late Developer dev = Developer(DeleteCommand(db), UpdateCommand(db),
      InsertCommand(db), SelectCommand(db));
  dev.selectData();
  dev.insertData();
  dev.updateData();
  dev.deleteData();
}

