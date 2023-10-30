import 'package:flutter/material.dart';
import 'package:login_page/views/login_view.dart';

class TextFieldWiget extends StatelessWidget {
  final String idim;
  TextEditingController? controller;

  TextFieldWiget({Key? key, required this.idim, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        autocorrect: false,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: idim,
          hintText: 'Enter ${idim}',
        ),
      ),
    );
  }

  static bool isnotEmptys() {
    if (LoginView.usernameController.text.isNotEmpty &&
        LoginView.password.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
