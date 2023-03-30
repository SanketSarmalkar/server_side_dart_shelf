// import 'package:server/server.dart' as server;
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_static/shelf_static.dart';

void main() async {
  var port = int.tryParse(Platform.environment['PORT'] ?? '') ?? 8080;
  final handler = createStaticHandler('screens', defaultDocument: 'index.html');
  // var server = await shelf_io.serve(
  //     (Request request) => Response.ok("hello World!"), '0.0.0.0', port);
  final server = await shelf_io.serve(handler, 'localhost', port);
  // print('Hello world: ${server.calculate()}!');
  print('Serving at http://${server.address.host}:${server.port}');
}
