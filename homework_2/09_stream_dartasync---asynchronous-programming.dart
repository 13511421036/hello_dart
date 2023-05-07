void main(List<String> arguments) {
  // ...
  FileSystemEntity.isDirectory(searchPath).then((isDir) {
    if (isDir) {
      final startingDir = Directory(searchPath);
      startingDir.list().listen((entity) {
        if (entity is File) {
          searchFile(entity, searchTerms);
        }
      });
    } else {
      searchFile(File(searchPath), searchTerms);
    }
  });
}
void main(List<String> arguments) async {
    // ...
    if (await FileSystemEntity.isDirectory(searchPath)) {
      final startingDir = Directory(searchPath);
      await for (final entity in startingDir.list()) {
        if (entity is File) {
          searchFile(entity, searchTerms);
        }
      }
    } else {
      searchFile(File(searchPath), searchTerms);
    }
  }
  // Add an event handler to a button.
submitButton.onClick.listen((e) {
    // When the button is clicked, it runs this code.
    submitData();
});

var lines = inputStream.transform(utf8.decoder).transform(const LineSplitter());


Future<void> readFileAwaitFor() async {
    var config = File('config.txt');
    Stream<List<int>> inputStream = config.openRead();
    
    var lines =
        inputStream.transform(utf8.decoder).transform(const LineSplitter());
    try {
        await for (final line in lines) {
        print('Got ${line.length} characters from stream');
        }
        print('file is now closed');
    } catch (e) {
        print(e);
    }
    }

var config = File('config.txt');
Stream<List<int>> inputStream = config.openRead();

inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
    (String line) {
  print('Got ${line.length} characters from stream');
}, onDone: () {
  print('file is now closed');
}, onError: (e) {
  print(e);
});