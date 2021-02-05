import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() async {
  var config = File(r'C:\config.txt');
  // try {
  //   var contents;
  //   contents = await config.readAsString();
  //   print(contents);
  //   print('The file is ${contents.length} characters long.');
  //   contents = await config.readAsLines();
  //   print('The file is ${contents.length} lines long.');
  //   contents = await config.readAsBytes();
  //   print('The file is ${contents.length} bytes long.');
  // } catch (e) {
  //   print(e);
  // }

  // Stream<List<int>> inputStream = config.openRead();
  // var lines = utf8.decoder.bind(inputStream).transform(LineSplitter());
  // try {
  //   await for (var line in lines) {
  //     print('Got: $line, ${line.length} characters from Stream');
  //   }
  //   print('file is now closed.');
  // } catch (e) {
  //   print(e);
  // }

  // var logFile = File('log.txt');
  // var sink = logFile.openWrite();
  // sink.write('FILE ACCESSED ${DateTime.now()}\n');
  // await sink.flush();
  // await sink.close();

  // var dir = Directory(r'C:\Windows');
  // try {
  //   var dirList = dir.list();
  //   await for (FileSystemEntity f in dirList) {
  //       if (f is File) {
  //         print('Found file ${f.path}');
  //       } else if (f is Directory) {
  //         print('Found dir ${f.path}');
  //       }
  //     }
  // } catch (e) {
  //   print(e);
  // }

  // Timer(Duration(seconds: 1), () => print('timer'));
  // print('end of main');

  // Timer.periodic(Duration(seconds: 1), (timer) => print('timer'));
  // print('end of main');

  // var file = File(Platform.script.toFilePath());
  // print('${await (file.readAsString(encoding: ascii))}');

  // final semicolon = ';'.codeUnitAt(0);
  // var result = <int>[];
  //
  // final script = File(Platform.script.toFilePath());
  // RandomAccessFile file = await script.open(mode: FileMode.read);
  //
  // while (true) {
  //   final byte = await file.readByte();
  //   result.add(byte);
  //   if (byte == semicolon) {
  //     print(String.fromCharCodes(result));
  //     await file.close();
  //     break;
  //   }
  // }

  // var result = <int>[];
  //
  // Stream<List<int>> stream = File(Platform.script.toFilePath()).openRead();
  // final semicolon = ';'.codeUnitAt(0);
  //
  // await for (var data in stream) {
  //   for (int i = 0; i < data.length; i++) {
  //     result.add(data[i]);
  //     if (data[i] == semicolon) {
  //       print(String.fromCharCodes(result));
  //       return;
  //     }
  //   }
  // }

  ProcessResult results = await Process.run('ls', ['-1']);
  print(results.stdout);
}
