```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... process jsonData ...
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the specific JSON format error
      } catch (e) {
        print('Error decoding JSON: $e');
        //Handle other errors during decoding
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
    // Handle the error appropriately
  }
}
```