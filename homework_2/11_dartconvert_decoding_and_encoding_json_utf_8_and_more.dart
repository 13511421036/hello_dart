import 'dart:convert';

import '09_stream_dartasync---asynchronous-programming.dart';

import 'dart:html';

Future<void> main(List<String> args) async {
  // NOTE: Be sure to use double quotes ("),
  // not single quotes ('), inside the JSON string.
  // This string is JSON, not Dart.
  var jsonString = '''
    [
      {"score": 40},
      {"score": 80}
    ]
  ''';

  var scores = jsonDecode(jsonString);
  assert(scores is List);

  var firstScore = scores[0];
  assert(firstScore is Map);
  assert(firstScore['score'] == 40);

  var scores1 = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  var jsonText = jsonEncode(scores1);
  assert(jsonText ==
      '[{"score":40},{"score":80},'
          '{"score":100,"overtime":true,'
          '"special_guest":null}]');

  List<int> utf8Bytes = [
    0xc3,
    0x8e,
    0xc3,
    0xb1,
    0xc5,
    0xa3,
    0xc3,
    0xa9,
    0x72,
    0xc3,
    0xb1,
    0xc3,
    0xa5,
    0xc5,
    0xa3,
    0xc3,
    0xae,
    0xc3,
    0xb6,
    0xc3,
    0xb1,
    0xc3,
    0xa5,
    0xc4,
    0xbc,
    0xc3,
    0xae,
    0xc5,
    0xbe,
    0xc3,
    0xa5,
    0xc5,
    0xa3,
    0xc3,
    0xae,
    0xe1,
    0xbb,
    0x9d,
    0xc3,
    0xb1
  ];

  var funnyWord = utf8.decode(utf8Bytes);

  assert(funnyWord == 'Îñţérñåţîöñåļîžåţîờñ');

  var lines = utf8.decoder
      .bind(inputStream as Stream<List<int>>)
      .transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }

  List<int> encoded = utf8.encode('Îñţérñåţîöñåļîžåţîờñ');

  assert(encoded.length == utf8Bytes.length);
  for (int i = 0; i < encoded.length; i++) {
    assert(encoded[i] == utf8Bytes[i]);
  }

// Find an element by id (an-id).
  Element idElement = querySelector('#an-id')!;

// Find an element by class (a-class).
  Element classElement = querySelector('.a-class')!;

// Find all elements by tag (<div>).
  List<Element> divElements = querySelectorAll('div');

// Find all text inputs.
  List<Element> textInputElements = querySelectorAll(
    'input[type="text"]',
  );

// Find all elements with the CSS class 'class'
// inside of a <p> that is inside an element with
// the ID 'id'.
  List<Element> specialParagraphElements = querySelectorAll('#id p.class');

  <a id="example" href="/another/example">link text</a>

  var anchor = querySelector('#example') as AnchorElement;
anchor.href = 'https://dart.dev';

<!-- In HTML: -->
<p>
  <span class="linux">Words for Linux</span>
  <span class="macos">Words for Mac</span>
  <span class="windows">Words for Windows</span>
</p>


// In Dart:
const osList = ['macos', 'windows', 'linux'];
final userOs = determineUserOs();

// For each possible OS...
for (final os in osList) {
  // Matches user OS?
  bool shouldShow = (os == userOs);

  // Find all elements with class=os. For example, if
  // os == 'windows', call querySelectorAll('.windows')
  // to find all elements with the class "windows".
  // Note that '.$os' uses string interpolation.
  for (final elem in querySelectorAll('.$os')) {
    elem.hidden = !shouldShow; // Show or hide.
  }
}


elem.attributes['someAttribute'] = 'someValue';


var elem = ParagraphElement();
elem.text = 'Creating is easy!';


var elem2 = Element.html(
  '<p>Creating <em>is</em> easy!</p>',
);

document.body!.children.add(elem2);


querySelector('#inputs')!.nodes.add(elem);

querySelector('#status')!.replaceWith(elem);


// Find a node by ID, and remove it from the DOM if it is found.
querySelector('#expendable')?.remove();

var elem = querySelector('#message')!;
elem.classes.add('warning');

var message = DivElement();
message.id = 'message2';
message.text = 'Please subscribe to the Dart mailing list.';


var message = DivElement()
  ..id = 'message2'
  ..text = 'Please subscribe to the Dart mailing list.';


  message.style
  ..fontWeight = 'bold'
  ..fontSize = '3em';


  // Find a button by ID and add an event handler.
querySelector('#submitInfo')!.onClick.listen((e) {
  // When the button is clicked, it runs this code.
  submitData();
});


document.body!.onClick.listen((e) {
  final clickedElem = e.target;
  // ...
});
}
