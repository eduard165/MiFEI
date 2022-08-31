import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class Metodos {
  static Future<void> crearTabla(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        titulo TEXT,
        descripcion TEXT,
        creadoAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'misrutas.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await crearTabla(database);
      },
    );
  }

  static Future<int> crearItem(String titulo, String? desc) async {
    final db = await Metodos.db();

    final data = {'titulo': titulo, 'descripcion': desc};
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await Metodos.db();
    return db.query('items', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await Metodos.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> actualizar(int id, String titulo, String? desc) async {
    final db = await Metodos.db();

    final data = {
      'titulo': titulo,
      'descripcion': desc,
      'creadoAt': DateTime.now().toString()
    };

    final res =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return res;
  }

  static Future<void> eliminar(int id) async {
    final db = await Metodos.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("No se pudo eliminar :(: $err");
    }
  }
}
