import 'dart:core';

void main(List<String> args) {
  // Create an empty list of strings.
  var grains = <String>[];
  assert(grains.isEmpty);

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

  // Add to a list.
  fruits.add('kiwis');

  // Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);

  // Get the list length.
  assert(fruits.length == 5);

  // Remove a single item.
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

  // Remove all elements from a list.
  fruits.clear();
  assert(fruits.isEmpty);

  // You can also create a List using one of the constructors.
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
  var fruits1 = ['apples', 'oranges'];

  // Access a list item by index.
  assert(fruits1[0] == 'apples');

  // Find an item in a list.
  assert(fruits1.indexOf('apples') == 0);
  var fruits2 = ['bananas', 'apples', 'oranges'];

  // Sort a list.
  fruits2.sort((a, b) => a.compareTo(b));
  assert(fruits2[0] == 'apples');
  // This list should contain only strings.
  var fruits3 = <String>[];

  fruits3.add('apples');
  var fruit4 = fruits[0];
  assert(fruit4 is String);
  fruits.add('5'); // Error: 'int' can't be assigned to 'String'








  // Create an empty set of strings.
  var ingredients = <String>{};

  // Add new items to it.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

  // Adding a duplicate item has no effect.
  ingredients.add('gold');
  assert(ingredients.length == 3);

  // Remove an item from a set.
  ingredients.remove('gold');
  assert(ingredients.length == 2);

  // You can also create sets using
  // one of the constructors.
  var atomicNumbers = Set.from([79, 22, 54]);

  var ingredients1 = Set<String>();
  ingredients1.addAll(['gold', 'titanium', 'xenon']);

  // Check whether an item is in the set.
  assert(ingredients1.contains('titanium'));

  // Check whether all the items are in the set.
  assert(ingredients1.containsAll(['titanium', 'xenon']));
  var ingredients2 = Set<String>();
  ingredients2.addAll(['gold', 'titanium', 'xenon']);

  // Create the intersection of two sets.
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));







  // Maps often use strings as keys.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Maps can be built from a constructor.
  var searchTerms = Map();

  // Maps are parameterized types; you can specify what
  // types the key and value should be.
  var nobleGases2 = Map<int, String>();

  var nobleGases1 = {54: 'xenon'};

  // Retrieve a value with a key.
  assert(nobleGases1[54] == 'xenon');

  // Check whether a map contains a key.
  assert(nobleGases1.containsKey(54));

  // Remove a key and its value.
  nobleGases1.remove(54);
  assert(!nobleGases1.containsKey(54));

  var hawaiianBeaches2 = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  // Get all the keys as an unordered collection
  // (an Iterable).
  var keys = hawaiianBeaches2.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

  // Get all the values as an unordered collection
  // (an Iterable of Lists).
  var values = hawaiianBeaches2.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));


  var hawaiianBeaches3 = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
  };

  assert(hawaiianBeaches3.containsKey('Oahu'));
  assert(!hawaiianBeaches3.containsKey('Florida'));

  var teamAssignments = <String, String>{};
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);

  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);
  var teas1 = ['green', 'black', 'chamomile', 'earl grey'];

  teas1.forEach((tea) => print('I drink $tea'));
  hawaiianBeaches.forEach((k, v) {
  print('I want to visit $k and swim at $v');
  // I want to visit Oahu and swim at
  // [Waikiki, Kailua, Waimanalo], etc.
  });

  var teas2 = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas2.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  var loudTeas1 = teas.map((tea) => tea.toUpperCase()).toList();
  var teas3 = ['green', 'black', 'chamomile', 'earl grey'];

  // Chamomile is not caffeinated.
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';

  // Use where() to find only the items that return true
  // from the provided function.
  var decaffeinatedTeas = teas3.where((tea) => isDecaffeinated(tea));
  // or teas.where(isDecaffeinated)

  // Use any() to check whether at least one item in the
  // collection satisfies a condition.
  assert(teas3.any(isDecaffeinated));

  // Use every() to check whether all the items in a
  // collection satisfy a condition.
  assert(!teas3.every(isDecaffeinated));
}

pickToughestKid() {
  //未定义
}