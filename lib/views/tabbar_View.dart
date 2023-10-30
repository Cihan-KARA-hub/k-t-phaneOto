import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/views/home_view.dart';
import 'package:login_page/views/profile_view.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({super.key});

  @override
  State<TabbarView> createState() => _TabbarModelState();
}

class _TabbarModelState extends State<TabbarView> {
  bool toChange = false;
  Color color = Colors.black;
  void inChange() {
    if (toChange == true) {
      setState(() {
        color;
      });
    } else {
      color = Colors.white;
    }
  }

  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(children: [HomeView(), profilemViget()]),
          bottomNavigationBar: BottomAppBar(
              color: Colors.amber,
              child: TabBar(tabs: [
                Tab(
                  icon: FaIcon(FontAwesomeIcons.home),
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.user),
                ),
              ])),
        ));
  }
}
