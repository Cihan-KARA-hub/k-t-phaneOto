import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profilemViget extends StatefulWidget {
  const profilemViget({super.key});

  @override
  State<profilemViget> createState() => _profilemVigetState();
}

class _profilemVigetState extends State<profilemViget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            iconSize: 30,
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          _profilePeding(
            sizes: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: MediaQuery.of(context).size.width * 0.25,
          ),
          _profilePeding(
            sizes: 8,
          ),
          Text(
            'Cihan KARA',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text('cihankara@email.com'),
          _profilePeding(
            sizes: 10,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              highlightColor: Colors.amber,
            ),
          ),
          _profilePeding(
            sizes: 50,
          ),
          const Card(
            margin: EdgeInsets.only(left: 20, right: 20),
            shadowColor: Colors.red,
            child: _profileRow(name: "rezercasyonlarım"),
          ),
          const Card(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            shadowColor: Colors.red,
            child: _profileRow(name: "kitaplarım"),
          ),
          const Card(
            margin: EdgeInsets.only(left: 20, right: 20),
            shadowColor: Colors.red,
            child: _profileRow(name: "hangi kitapları okudum ?"),
          )
        ]),
      ),
    );
  }
}

class _profileRow extends StatelessWidget {
  final String name;
  const _profileRow({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Icon(Icons.abc_sharp, size: 30),
      Text('$name'),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_right),
        iconSize: 30,
      )
    ]);
  }
}

class _profilePeding extends StatelessWidget {
  final double sizes;
  _profilePeding({super.key, required this.sizes});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: sizes));
  }
}
