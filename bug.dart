```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This line might throw an exception if the JSON is malformed
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block catches all exceptions, including those not related to JSON decoding
    print('Error: $e');
    // Handle the error appropriately
  }
}
```