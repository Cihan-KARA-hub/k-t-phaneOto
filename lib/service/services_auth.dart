import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:login_page/dataModel/user_model.dart';
import 'package:login_page/links/links.dart';
import 'package:login_page/service/services.dart';

class AuthService {
  Future<List<User>> login(String? name, String? email) async {
    Response response = await http.post(Uri.parse(links.allUsersNameUri(name)));
    Response response1 =
        await http.post(Uri.parse(links.allUsersEmailUri(email)));
    if (response.statusCode == 200 && response1.statusCode == 200) {
      final List res = jsonDecode(response.body)['data'];
      return res.map(((e) => User.fromJson(e))).toList();
    } else {
      throw Exception(response);
    }
  }
}

final DataAuthProvider = Provider<AuthService>((ref) => AuthService());
