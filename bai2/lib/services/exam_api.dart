import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/question.dart';


class ExamApi {
  static const String baseUrl = 'http://10.0.2.2:5000/api';

  static Future<List<Question>> getRandomByCategory(int categoryId) async {
    final url = Uri.parse('$baseUrl/exams/random-by-category/$categoryId');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => Question.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load questions');
    }
  }
}
