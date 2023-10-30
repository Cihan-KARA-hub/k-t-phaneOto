import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_page/data_provider.dart/data_AuthProvider.dart';
import 'package:login_page/model/button_model.dart';
import 'package:login_page/model/textfield_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});
  static TextEditingController password = TextEditingController();
  static TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginData = ref.watch(dataAuthProvider);
    
    // TODO: implement build
    final Uri _url = Uri.parse('https://tr-tr.facebook.com/');
    Future<void> _launchUrl() async {
      if (await canLaunchUrl(_url)) {
        await launchUrl(_url);
      } else {
        throw 'Linki açamadık: $_url';
      }
    }

    final TextFieldWiget text1 = TextFieldWiget(
      controller: LoginView.usernameController,
      idim: 'Kullanıcı adı ',
    );
    final TextFieldWiget text2 = TextFieldWiget(
      idim: "Sifre",
      controller: LoginView.password,
    );

    final size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /*SizedBox(
                height: 220,
                width: 200,
                child:Container(
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://media.istockphoto.com/id/1281553891/tr/vekt%C3%B6r/sat%C4%B1lan-metin-sat%C4%B1r%C4%B1-simgesi-ile-m%C3%BCzayede-%C3%A7eki%C3%A7-finans-kavram%C4%B1-beyaz-arka-plan-%C3%BCzerinde-a%C3%A7%C4%B1k.jpg?s=612x612&w=0&k=20&c=lr-MlVH1ZAFbQRQzyBPOLcQ3HbZOI9xN1fNFFIZ9uUM=')),
              ),*/
              Center(
                child: SizedBox(
                  height: height / 1.7,
                  width: width / 1.2,
                  child: Card(
                      color: Colors.blue[100],
                      shadowColor: Color.fromARGB(255, 0, 0, 0),
                      borderOnForeground: true,
                      surfaceTintColor: Color.fromARGB(135, 159, 58, 58),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Login",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          text1,
                          text2,
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                color: Colors.black,
                                height: 2,
                                width: 100,
                              ),
                              Text("OR"),
                              Container(
                                color: Colors.black,
                                height: 2,
                                width: 100,
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () => _launchUrl,
                              icon: const Icon(
                                Icons.facebook_rounded,
                                size: 60,
                                color: Colors.blue,
                              )),
                        ],
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
