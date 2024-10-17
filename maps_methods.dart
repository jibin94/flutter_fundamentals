void main() {
  // 1. Creating a Map
  Map<String, String> countryCodes = {
    'US': 'United States',
    'IN': 'India',
    'CA': 'Canada'
  };
  print('1. Creating a Map: $countryCodes');
  // Output: 1. Creating a Map: {US: United States, IN: India, CA: Canada}

  // 2. Creating a Map using from() and of() Constructors
  Map<String, String> fruits = {
    'apple': 'red',
    'banana': 'yellow',
    'grape': 'purple'
  };

  Map<String, String> mapFrom1 = fruits;
  mapFrom1['grape'] = "wine";
  print('2. Map.from(): $mapFrom1');

  // You are assigning a reference of the fruits map to mapFrom1 directly.
  // This means that both mapFrom1 and fruits will point to the same underlying map in memory.
  // Any changes made to mapFrom1 will also affect fruits, and vice versa.

  Map<String, String> mapFrom2 = Map.from(fruits);
  print('2. Map.from(): $mapFrom2');
  // Output: 2. Map.from(): {apple: red, banana: yellow, grape: wine}

  Map<String, String> mapOf = Map.of(fruits);
  print('2. Map.of(): $mapOf');
  // Output: 2. Map.of(): {apple: red, banana: yellow, grape: wine}

  //Transform key data type
  Map<dynamic, String> mixedMap = {
    1: 'one',
    'two': 'two',
  };

  Map<String, String> mapFrom =
      mixedMap.map((key, value) => MapEntry(key.toString(), value));
  print('2. Transform key data type: $mapFrom');

// Output: 2. Transform key data type: {1: one, two: two}

  // 3. Creating a Map using fromIterables()
  List<String> colors = ['red', 'green', 'blue'];
  List<int> codes = [1, 2, 3];

  Map<String, int> colorMap = Map.fromIterables(colors, codes);
  print('3. Map.fromIterables(): $colorMap');
  // Output: 3. Map.fromIterables(): {red: 1, green: 2, blue: 3}

  // 4. Creating a Map using fromIterable()
  List<int> numbers = [100, 200, 300];

  Map<String, int> numMap = Map.fromIterable(
    numbers,
    key: (num) => 'ID-$num',
    value: (num) => num * 2,
  );
  print('4. Map.fromIterable(): $numMap');
  // Output: 4. Map.fromIterable(): {ID-100: 200, ID-200: 400, ID-300: 600}

  // 5. Creating a Const Map using unmodifiable()
  Map<String, int> constMap = Map.unmodifiable({'January': 1, 'February': 2});
  print('5. Const Map using Map.unmodifiable(): $constMap');
  // Output: 5. Const Map using Map.unmodifiable(): {January: 1, February: 2}

  // 6. Using Collection if and for
  bool showExtra = true;

  var programmingLanguages = {
    1: 'Python',
    2: 'JavaScript',
    if (showExtra) 3: 'Dart'
  };
  print('6. Collection if: $programmingLanguages');
  // Output: 6. Collection if: {1: Python, 2: JavaScript, 3: Dart}

  var squares = {for (var i = 1; i <= 4; i++) i: i * i};
  print('6. Collection for: $squares');
  // Output: 6. Collection for: {1: 1, 2: 4, 3: 9, 4: 16}

  // 7. Adding items to a Map
  Map<int, String> ages = {25: 'Alice', 30: 'Bob'};

  ages[35] = 'Charlie';
  print('7. Adding items: $ages');
  // Output: 7. Adding items: {25: Alice, 30: Bob, 35: Charlie}

  ages.putIfAbsent(40, () => 'David');
  print('7. putIfAbsent(): $ages');
  // Output: 7. putIfAbsent(): {25: Alice, 30: Bob, 35: Charlie, 40: David}

  // 8. Updating values in a Map
  Map<int, String> scores = {1: 'low', 2: 'medium'};

  scores[1] = 'very low';
  print('8. Updating value: $scores');
  // Output: 8. Updating value: {1: very low, 2: medium}

  scores.update(2, (v) => 'very high');
  print('8. update(): $scores');
  // Output: 8. update(): {1: very low, 2: very high}

  scores.update(3, (v) => 'unknown', ifAbsent: () => 'new entry');
  print('8. update() with ifAbsent: $scores');
  // Output: 8. update() with ifAbsent: {1: very low, 2: very high, 3: new entry}

  // 9. Accessing items in a Map
  Map<int, String> population = {1: 'small', 2: 'medium', 3: 'large'};

  print('9. Map length: ${population.length}'); // Output: 9. Map length: 3
  print(
      '9. isNotEmpty: ${population.isNotEmpty}'); // Output: 9. isNotEmpty: true
  print('9. Keys: ${population.keys}'); // Output: 9. Keys: (1, 2, 3)
  print(
      '9. Values: ${population.values}'); // Output: 9. Values: (small, medium, large)
  print(
      '9. Access value by key 2: ${population[2]}'); // Output: 9. Access value by key 2: medium

  // 10. Checking key/value existence
  Map<int, String> techCompanies = {1: 'Google', 2: 'Microsoft', 3: 'Apple'};

  print(
      '10. containsKey(2): ${techCompanies.containsKey(2)}'); // Output: 10. containsKey(2): true
  print(
      '10. containsValue(\'Amazon\'): ${techCompanies.containsValue('Amazon')}'); // Output: 10. containsValue('Amazon'): false

  // 11. Removing items from a Map
  Map<int, String> numbersMap = {1: 'one', 2: 'two', 3: 'three'};

  numbersMap.remove(2);
  print('11. remove(2): $numbersMap');
  // Output: 11. remove(2): {1: one, 3: three}

  numbersMap.removeWhere((k, v) => k > 1);
  print('11. removeWhere: $numbersMap');
  // Output: 11. removeWhere: {1: one}

  numbersMap.clear();
  print('11. clear(): $numbersMap');
  // Output: 11. clear(): {}

  // 12. Combining Maps
  Map<int, String> firstMap = {1: 'apple', 2: 'orange'};
  Map<int, String> secondMap = {3: 'banana'};
  Map<int, String> thirdMap = {4: 'grape'};

  var combinedMap1 = {}
    ..addAll(firstMap)
    ..addAll(secondMap)
    ..addAll(thirdMap);
  print('12. Combining maps using addAll: $combinedMap1');
  // Output: 12. Combining maps using addAll: {1: apple, 2: orange, 3: banana, 4: grape}

  var combinedMap2 = {...firstMap, ...secondMap, ...thirdMap};
  print('12. Combining maps using spread: $combinedMap2');
  // Output: 12. Combining maps using spread: {1: apple, 2: orange, 3: banana, 4: grape}

  // 13. Iterating over a Map
  Map<int, String> days = {1: 'Monday', 2: 'Tuesday', 3: 'Wednesday'};

  print('13. Iterating over map:');
  days.forEach((k, v) => print('key: $k, value: $v'));
  // Output: 13. Iterating over map:
  //         key: 1, value: Monday
  //         key: 2, value: Tuesday
  //         key: 3, value: Wednesday

  // 14. Getting Key by Value
  Map<int, String> weekDays = {1: 'Monday', 2: 'Tuesday', 3: 'Wednesday'};

  var key = weekDays.keys
      .firstWhere((k) => weekDays[k] == 'Tuesday', orElse: () => -1);
  print('14. Getting key by value: $key');
  // Output: 14. Getting key by value: 2 if found, otherwise -1 if not found

  // 15. Sorting a Map by Values
  Map<int, String> players = {1: 'John', 2: 'Alice', 3: 'Bob'};

  var sortedPlayers = Map.fromEntries(
      players.entries.toList()..sort((a, b) => a.value.compareTo(b.value)));
  print('15. Sorting by values: $sortedPlayers');
  // Output: 15. Sorting by values: {2: Alice, 3: Bob, 1: John}

  // 16. Transforming a Map using map()
  Map<int, String> cities = {1: 'Paris', 2: 'London', 3: 'New York'};

  var transformedCities =
      cities.map((key, value) => MapEntry(key, value.toUpperCase()));
  print('16. Transforming Map: $transformedCities');
  // Output: 16. Transforming Map: {1: PARIS, 2: LONDON, 3: NEW YORK}

  // 17. Checking for Map Equality
  Map<int, String> mapA = {1: 'A', 2: 'B'};
  Map<int, String> mapB = {1: 'A', 2: 'B'};
  Map<int, String> mapC = {1: 'A', 2: 'C'};

  print(
      '17. Map A == Map B: ${mapA == mapB}'); // Output: 17. Map A == Map B: true
  print(
      '17. Map A == Map C: ${mapA == mapC}'); // Output: 17. Map A == Map C: false
}
