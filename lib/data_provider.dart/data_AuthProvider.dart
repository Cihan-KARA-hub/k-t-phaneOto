import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_page/dataModel/user_model.dart';
import 'package:login_page/service/services.dart';
import 'package:login_page/service/services_auth.dart';

final dataAuthProvider = FutureProvider<List<User>>(
  (ref) async {
    return ref.watch(DataAuthProvider).login("ali","veli");
  },
);
