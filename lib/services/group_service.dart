import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';

class GroupService {

  static Future<http.Response> createGroup(String name, String cycleType, String contributionAmount, String description) async {
    final response = await http.post(
      Uri.parse('$baseUrl/group'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name,'cycle_type': cycleType ,'contribution_amount': contributionAmount, 'description':description}),
    );
    return response;
  }
}