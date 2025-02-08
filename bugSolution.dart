```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Correct way to access the key, handling potential null values
      final value = jsonData['key'] ?? 'default_value'; // Provide a default value or handle null appropriately
      print(value);

      //Alternative approach using containsKey()
      if (jsonData.containsKey('key')){
        final value2 = jsonData['key'];
        print(value2);
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```