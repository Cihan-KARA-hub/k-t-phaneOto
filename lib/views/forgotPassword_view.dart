import 'package:flutter/material.dart';
import 'package:login_page/views/login_view.dart';

class Forgotpassword extends StatelessWidget {
  Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double toppading = size.height * 0.20;
    return Scaffold(
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: toppading)),
          SizedBox(
              height: 400,
              width: 400,
              child: Image.network(
                'https://www.cozumpark.com/wp-content/uploads/2023/05/e-posta-kimlik-dogrulama-nedir-gonderen-ve-alici-kimlik-dogrulamasi-jpeg.webp',
                fit: BoxFit.cover,
              )),
          Text(
            'Mail adresinize link gönderdik :)',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            width: 200,
            height: 70,
            color: Colors.deepPurple,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginView(),
                ));
              },
              child: Text("TAMAM",
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
          )
        ]),
      ),
    );
  }
}
