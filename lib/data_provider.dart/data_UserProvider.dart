import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_page/dataModel/user_model.dart';
import 'package:login_page/service/services.dart';

final dataUserProvider = FutureProvider<List<User>>(
  (ref) async {
    return ref.watch(UserProvider).getUsers();
  },
);
