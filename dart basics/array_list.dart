void main() {
  /// Filtering Lists
  List<String> fruits = ['apple', 'banana', 'grape', 'orange', 'kiwi'];

  // Filter fruits starting with 'a'
  List<String> aFruits =
      fruits.where((fruit) => fruit.startsWith('a')).toList();

  print(aFruits);
  // Output: [apple]

  List<String> countriesNames = [
    "Canada",
    "Brazil",
    "USA",
    "Japan",
    "China",
    "UK",
    "Uganda",
    "Uruguay"
  ];

  List<String> filter = [];
  filter.addAll(countriesNames);

  filter.retainWhere((item) => item.contains("U"));
  print(filter);
  //list of countries which contains 'U' on name
  //output:  [USA, UK, Uganda, Uruguay]

  /// Working with Lists of Objects
  List<Map<String, dynamic>> users = [
    {'name': 'Jibin', 'age': 30},
    {'name': 'Albin', 'age': 25},
    {'name': 'Boby', 'age': 35}
  ];

  // Filter users younger than 30
  List<Map<String, dynamic>> youngUsers =
      users.where((user) => user['age'] < 30).toList();

  print(youngUsers);
  // Output: [{'name': 'Albin', 'age': 25}]

  /// Checking List Elements
  List<int> numbers = [1, 2, 3, 4, 5];

  // Check if any number is even
  bool anyEven = numbers.any((number) => number % 2 == 0);

  print(anyEven);
  // Output: true

  /// Mapping Lists
  List<int> numb = [1, 2, 3, 4, 5];

  // Double each number
  List<int> doubledNumbers = numb.map((number) => number * 2).toList();

  print(doubledNumbers);
  // Output: [2, 4, 6, 8, 10]

  /// Expand method
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  List<int> flattenedList = nestedList.expand((list) => list).toList();

  print(flattenedList);
  // Output: [1, 2, 3, 4, 5, 6]

  /// Reduce method
  List<int> numbersList = [1, 2, 3, 4, 5];

  int sum = numbersList.reduce((value, element) => value + element);

  print(sum);
  // Output: 15

  /// Sort
  var array = [5, 3, 1, 4, 2];

  array.sort();
  print(array);
  // Output: [1, 2, 3, 4, 5]

  /// Remove element
  List<String> countries = [
    "Canada",
    "Brazil",
    "USA",
    "Japan",
    "China",
    "UK",
    "Uganda",
    "Uruguay"
  ];

  countries.removeWhere((str) {
    return str == "Brazil";
  }); //go through the loop and match content to delete from list
  print(countries);
  // Output: [Canada, USA, Japan, China, UK, Uganda, Uruguay]

  /// Combine Two Array List:
  List<String> asia = ["Nepal", "India", "Pakistan", "China", "Japan"];
  List<String> europe = ["Germany", "France", "United Kingdom", "Spain"];

  var countryList = List.from(asia)..addAll(europe);
  print(countryList);
  // Output: [Nepal, India, Pakistan, China, Japan, Germany, France, United Kingdom, Spain]

  ///Sort List in Alphabetical Order:

  //sorting in ascending order
  countries.sort((a, b) {
    return a.compareTo(b);
  });
  print(countries);
  //output: [Canada, China, Japan, UK, USA, Uganda, Uruguay]

  //sorting in descending order
  countries.sort((a, b) {
    return b.compareTo(a);
  });
  print(countries);
  //output: [Uruguay, Uganda, USA, UK, Japan, China, Canada]

  /// Make Array List Unique by Property Value

  List<String> countryDuplicates = [
    "Nepal",
    "Nepal",
    "USA",
    "Canada",
    "Canada",
    "China",
    "Russia",
  ];

  var seen = Set<String>();
  List<String> uniqueList =
      countryDuplicates.where((country) => seen.add(country)).toList();
  print(uniqueList);
//output:  [Nepal, USA, Canada, China, Russia]
}
