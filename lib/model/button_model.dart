import 'dart:async';

import 'package:flutter/material.dart';

import 'package:login_page/model/textfield_model.dart';
import 'package:login_page/views/home_view.dart';

class Floatbut extends StatefulWidget {
  final String titles;
  final PageController onPress;
  Floatbut({super.key, required this.titles, required this.onPress});

  @override
  State<Floatbut> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Floatbut> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        width: 190,
        child: FloatingActionButton(
          onPressed: () {
            widget.onPress;
            setState(() {
              if (TextFieldWiget.isnotEmptys() == true) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeView(),
                ));
              } else {
                print('dolduramadın');
              }
            });
          },
          shape: StadiumBorder(),
          backgroundColor: Colors.blue[400],
          foregroundColor: Colors.blue,
          child: Text(
            "${widget.titles}",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
