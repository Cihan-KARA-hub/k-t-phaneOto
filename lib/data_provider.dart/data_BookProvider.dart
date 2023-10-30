import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_page/dataModel/books_model.dart';

import 'package:login_page/service/sevices_Books.dart';

final dataBookProvider = FutureProvider<List<BookModel>>(
  (ref) async {
    return ref.watch(DataBookProvider).getUsers();
  },
);
