import 'dart:convert';
import 'package:mysql1/mysql1.dart';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main() async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'dart_user',
      db: 'delivery',
      password: 'dart_pass',
    ),
  );

  print(await conn.query('select * from tb_usuarios'));

  print('server on! 🚀');
  await serve(
    (Request req) async {
      return Response(200,
          body: jsonEncode({'ola': 'mundo!'}),
          headers: {'content-type': 'application/json'});
    },
    'localhost',
    7000,
  );
}
