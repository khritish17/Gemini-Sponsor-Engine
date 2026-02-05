import 'package:gemini_sponsor_engine_app/core/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static final String _baseUrl = ApiApplication.baseURL;

  static Future<String?> sendMessage(String text) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/ask_gemini'),
        headers: {'Content-Type':'application/json'},
        body: jsonEncode({"user_query":text}),
        );
      if (response.statusCode == 200){
        final data = jsonDecode(response.body);
        return data['response'];
      }
    }
    catch (e) {
      print("Error: $e");
    }
    return null;
  }
}
