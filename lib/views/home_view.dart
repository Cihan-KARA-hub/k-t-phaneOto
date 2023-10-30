import 'package:flutter/material.dart';
import 'package:login_page/model/listView_model.dart';
import 'package:login_page/model/textfield_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _searchController = TextEditingController();

  final homeTitle = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            backgroundColor: Colors.red,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('Yazarlar',
                            style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(
                        onPressed: () {},
                        child: Text('Yayın Evleri',
                            style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(
                        onPressed: () {},
                        child: Text('kiralık olmayanlar',
                            style: Theme.of(context).textTheme.bodyLarge)),
                  ]),
            )),
        appBar: AppBar(
          title: Text(homeTitle),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            SearchBar(
              controller: _searchController,
              hintText: "Search",
              backgroundColor: MaterialStateProperty.all(Colors.white24),
              shadowColor: MaterialStateProperty.all(Colors.amber),
              onChanged: (Text) {},
            ),
            Expanded(
                child: ListViewModel(
              isButton: true,
            ))
          ],
        ));
  }
}
