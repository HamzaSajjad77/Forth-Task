import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }
}