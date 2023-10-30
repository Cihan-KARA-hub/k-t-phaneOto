import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import 'package:login_page/dataModel/user_model.dart';
import 'package:login_page/links/links.dart';

class ApiBookServices {
  Future<List<User>> getUsers() async {
    Response response = await http.get(Uri.parse(links.allUsersUri));
    if (response.statusCode == 200) {
      final List res = jsonDecode(response.body)['data'];
      return res.map(((e) => User.fromJson(e))).toList();
    } else {
      throw Exception(response);
    }
  }
}

final UserProvider = Provider<ApiBookServices>((ref) => ApiBookServices());
