// import 'package:server/server.dart' as server;
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  var port = int.tryParse(Platform.environment['PORT'] ?? '') ?? 8080;
  var server = await shelf_io.serve(
      (Request request) => Response.ok("hello World!"), '0.0.0.0', port);
  // print('Hello world: ${server.calculate()}!');
  print('Serving at http://${server.address.host}:${server.port}');
}
