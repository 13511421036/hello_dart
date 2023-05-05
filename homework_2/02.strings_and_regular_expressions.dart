import 'dart:core'; // 导入dart核心库

void main(List<String> args) {

  // Check whether a string contains another string.
  // 检查一个字符串是否包含另一个字符串。
  assert('Never odd or even'.contains('odd'));

  // Does a string start with another string?
  // 字符串是否以另一个字符串开头？
  assert('Never odd or even'.startsWith('Never'));

  // Does a string end with another string?
  // 字符串是否以另一个字符串结尾？
  assert('Never odd or even'.endsWith('even'));

  // Find the location of a string inside a string.
  // 查找一个字符串在另一个字符串中的位置。
  assert('Never odd or even'.indexOf('odd') == 6);

  // Grab a substring.
  // 提取子字符串。
  assert('Never odd or even'.substring(6, 9) == 'odd');

  // Split a string using a string pattern.
  // 使用字符串模式分割字符串。
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');

  // Get a UTF-16 code unit (as a string) by index.
  // 通过索引获取一个UTF-16编码单元（作为字符串）。
  assert('Never odd or even'[0] == 'N');

  // Use split() with an empty string parameter to get
  // a list of all characters (as Strings); good for
  // iterating.
  // 使用带有空字符串参数的split()来获取所有字符（作为字符串）的列表；适合迭代。
  for (final char in 'hello'.split('')) {
  print(char);
  }

  // Get all the UTF-16 code units in the string.
  // 获取字符串中的所有UTF-16编码单元。
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);

  // Convert to uppercase.
  // 转换为大写。
  assert('web apps'.toUpperCase() == 'WEB APPS');

  // Convert to lowercase.
  // 转换为小写。
  assert('WEB APPS'.toLowerCase() == 'web apps');

  // Trim a string.
  // 删除字符串两端的空白字符。
  assert(' hello '.trim() == 'hello');

  // Check whether a string is empty.
  // 检查字符串是否为空。
  assert(''.isEmpty);

  // Strings with only white space are not empty.
  // 只包含空格的字符串不为空。
  assert(' '.isNotEmpty);

  // Replace parts of a string using a regular expression.
  // 使用正则表达式替换字符串的部分内容。
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

  // greetingTemplate didn't change.
  // greetingTemplate没有改变。
  assert(greeting != greetingTemplate);

  // Use a StringBuffer for efficient string creation.
  // 使用StringBuffer进行高效的字符串创建。
  var sb = StringBuffer();
  sb
  ..write('Use a StringBuffer for ')
  ..writeAll(['efficient', 'string', 'creation'], ' ')
  ..write('.');

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');

  // Here's a regular expression for one or more digits.
  // 这是一个匹配一个或多个数字的正则表达式。
  var numbers = RegExp(r'\d+');

  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';

  // contains() can use a regular expression.
  // contains() 可以使用正则表达式。
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));

  // Replace every match with another string.
  // 将每个匹配项替换为另一个字符串。
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');

  var numbers1 = RegExp(r'\d+');
  var someDigits1 = 'llamas live 15 to 20 years';

  // Check whether the reg exp has a match in a string.
  // 检查正则表达式是否在字符串中有匹配项。
  assert(numbers1.hasMatch(someDigits1));

  // Loop through all matches.
  // 遍历所有匹配项。
  for (final match in numbers.allMatches(someDigits1)) {
    print(match.group(0)); // 15, then 20
  }





}