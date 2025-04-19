import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';

class AuthService {

  static Future<http.Response> registerUser(String name,String address,String language,String id_number,String phone_number) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'phone_number': phone_number,'name': name ,'language': language, 'id_number':id_number, 'address':address}),
    );
    return response;
  }

static Future<http.Response> verifyOTP(String otp ,String phone_number) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/verify-otp'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'phone_number': phone_number, 'otp' : otp}),
    );
    return response;
  }
}