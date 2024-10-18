/// List Methods

void main() {
  /// 1 - Add
  var fruits = ['mangoes', 'bananas'];
  fruits.add('apples');
  print('1 - Add: $fruits');
  // Output: 1 - Add: [mangoes, bananas, apples]

  /// 2 - Remove
  fruits.remove('mangoes');
  print('2 - Remove: $fruits');
  // Output: 2 - Remove: [bananas, apples]

  /// 3 - RemoveAt
  fruits.removeAt(1);
  print('3 - RemoveAt: $fruits');
  // Output: 3 - RemoveAt: [bananas]

  /// 4 - AddAll
  var moreFruits = ['peaches', 'plums'];
  fruits.addAll(moreFruits);
  print('4 - AddAll: $fruits');
  // Output: 4 - AddAll: [bananas, peaches, plums]

  /// 5 - AsMap
  print('5 - AsMap: ${fruits.asMap()}');
  // Output: 5 - AsMap: {0: bananas, 1: peaches, 2: plums}

  /// 6 - Insert and InsertAll
  fruits.insert(1, 'apples');
  print('6 - Insert: $fruits');
  // Output: 6 - Insert: [bananas, apples, peaches, plums]

  var otherFruits = ['cherries', 'grapes'];
  fruits.insertAll(2, otherFruits);
  print('6 - InsertAll: $fruits');
  // Output: 6 - InsertAll: [bananas, apples, cherries, grapes, peaches, plums]

  /// 7 - GetRange
  print('7 - GetRange: ${fruits.getRange(1, 4).toList()}');
  // Output: 7 - GetRange: [apples, cherries, grapes]

  /// 8 - FillRange
  fruits.fillRange(1, 4, 'strawberries');
  print('8 - FillRange: $fruits');
  // Output: 8 - FillRange: [bananas, strawberries, strawberries, strawberries, peaches, plums]

  /// 9 - LastIndexOf
  fruits.add('bananas');
  print('9 - LastIndexOf: ${fruits.lastIndexOf('bananas')}');
  // Output: 9 - LastIndexOf: 6

  /// 10 - Shuffle
  fruits.shuffle();
  print('10 - Shuffle: $fruits');
  // Output: 10 - Shuffle: [random shuffle of items]

  /// 11 - Sort
  fruits.sort();
  print('11 - Sort: $fruits');
  // Output: 11 - Sort: [bananas, bananas, peaches, plums, strawberries, strawberries, strawberries]

  /// 12 - Any
  print('12 - Any: ${fruits.any((fruit) => fruit.startsWith('a'))}');
  // Output: 12 - Any: false

  /// 13 - Every
  print('13 - Every: ${fruits.every((fruit) => fruit is int)}');
  // Output: 13 - Every: false

  /// 14 - Expand
  print('14 - Expand: ${fruits.expand((fruit) => [fruit, fruit]).toList()}');
  // Output: 14 - Expand: [bananas, bananas, bananas, bananas, peaches, peaches, plums, plums, strawberries, strawberries, strawberries, strawberries, strawberries, strawberries]

  /// 15 - Reduce
  var numbers = [10, 20, 30];
  print('15 - Reduce: ${numbers.reduce((a, b) => a + b)}');
  // Output: 15 - Reduce: 60

  /// 16 - Fold
  const initialValue = 100.0;
  final result = numbers.fold<double>(
      initialValue, (previousValue, element) => previousValue + element);
  print('16 - Fold: $result');
  // Output: 16 - Fold: 160.0

  /// 17 - Join
  print('17 - Join: ${fruits.join(', ')}');
  // Output: 17 - Join: bananas, bananas, peaches, plums, strawberries, strawberries, strawberries

  /// 18 - Map
  print('18 - Map: ${fruits.map((fruit) => "$fruit is delicious").toList()}');
  // Output: 18 - Map: [bananas is delicious, bananas is delicious, peaches is delicious, plums is delicious, strawberries is delicious, strawberries is delicious, strawberries is delicious]

  /// 19 - ForEach
  print('19 - ForEach:');
  fruits.forEach((fruit) {
    print(fruit);
  });
  // Output:
  // bananas
  // bananas
  // peaches
  // plums
  // strawberries
  // strawberries
  // strawberries

  /// 20 - Take
  print('20 - Take: ${fruits.take(2).toList()}');
  // Output: 20 - Take: [bananas, bananas]
}
