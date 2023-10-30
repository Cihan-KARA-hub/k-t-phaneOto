import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_page/dataModel/books_model.dart';
import 'package:login_page/data_provider.dart/data_BookProvider.dart';

import 'package:login_page/service/sevices_Books.dart';
import 'package:login_page/views/BookDetail_view.dart';

class ListViewModel extends ConsumerWidget {
  final bool? isButton;
  ListViewModel({super.key, required this.isButton});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final sizeCrd = MediaQuery.of(context).size;
    final double heightCrd = sizeCrd.height;
    final double widthCrd = sizeCrd.width;
    final double height = size.height;
    final double width = size.width;
    final bookDatas = ref.watch(dataBookProvider);
    // TODO: implement build
    return Scaffold(
        body: bookDatas.when(
      data: (bookDatas) {
        List<BookModel> bookList = bookDatas.map((e) => e).toList();
        return ListView.builder(
          itemCount: bookList.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                    width: width * 0.80,
                    height: height * 0.55,
                    child: Card(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // burdaki bilgilerin hepsini veritabınından çekip buraya yansıtılacak
                            Text(' ${bookList[index].booksName} ',
                                softWrap: true,
                                maxLines: 2,
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            SizedBox(
                              height: heightCrd * 0.25,
                              width: widthCrd * 0.65,
                              child: Placeholder(color: Colors.black),
                            ),
                            const low_pading(size: 10),

                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.recent_actors, size: 40),
                                label: Text(
                                  '${bookList[index].author},',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.menu_book_rounded,
                                  size: 40,
                                ),
                                Text(
                                  '${bookList[index].publication}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                )
                              ],
                            ),

                            TextButton.icon(
                                onPressed: () {
                                  //burda kitabın id'sini alacaz çünkü ına göre işlem yapacaz kiralama işlemler UNUTMA !
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BookDeatil(
                                      e: bookList[index],
                                    ),
                                  ));
                                },
                                icon: Icon(Icons.book, size: 35),
                                label: Text(
                                  'Kirala',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ))
                          ]),
                    ))
              ],
            );
          },
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () => Center(child: CircularProgressIndicator()),
    ));
  }
}

class low_pading extends StatelessWidget {
  final double size;
  const low_pading({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: size));
  }
}
