```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Use jsonData
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the FormatException appropriately, e.g., display an error message
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
    //Rethrow the exception to be handled at a higher level
    rethrow;
  }
}
```