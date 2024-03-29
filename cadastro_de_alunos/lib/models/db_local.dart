import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBLocal {
  final String table;
  final String dbName;

  DBLocal(
    {
      required this.table,
      this.dbName = "banco.db",
    }
  );

  Future<Database> getConnection() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, dbName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) {
        db.execute("CREATE TABLE $table (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, email TEXT NOT NULL)");
      }
    );
  }
}