import 'package:flutter/material.dart';
import 'package:login_page/dataModel/books_model.dart';

import 'package:login_page/model/listView_model.dart';

class BookDeatil extends StatefulWidget {
  final BookModel e;
  const BookDeatil({Key? key, required this.e}) : super(key: key);

  @override
  State<BookDeatil> createState() => _BookDeatilState();
}

class _BookDeatilState extends State<BookDeatil> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Kirala'),
        centerTitle: true,
      ),
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            Card(
              margin: EdgeInsets.only(top: 20),
              child: Column(children: [
                // burdaki bilgilerin hepsini veritabınından çekip buraya yansıtılacak
                Text(' ${widget.e.booksName}  ',
                    softWrap: true,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(
                  height: height * 0.30,
                  width: width * 0.65,
                  child: Placeholder(color: Colors.black),
                ),
                const low_pading(size: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.recent_actors, size: 40),
                        label: Text(' ${widget.e.author}')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu_book_rounded,
                          size: 40,
                        ),
                        Text(
                          '${widget.e.publication}',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Kitap kontratını okudum,kabul ediyorum'),
                Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuefirst = !valuefirst;
                      });
                    }),
              ],
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarms),
                label: Text('20 Günlük Kirala'))
          ],
        )),
      ),
    );
  }
}
