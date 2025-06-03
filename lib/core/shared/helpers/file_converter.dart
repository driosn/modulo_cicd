import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class FileConverter {
  Future<File> convertToFile(Uint8List bytes) async {
    const fileName = 'bill';
    final dir = await getTemporaryDirectory();
    File file = File("${dir.path}/$fileName.pdf");
    return await file.writeAsBytes(bytes);
  }
}
