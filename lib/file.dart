import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> get _localFilePath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<void> write(String content, String filename) async {
  final path = await _localFilePath;
  var file = File('$path/$filename');

  file.writeAsString('$content');
}

Future<String> read(String filename) {
  final path = _localFilePath;
  var file = File('$path/$filename');
  return file.readAsString();
}
