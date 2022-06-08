// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_localizations_V2/flutter_localizations_V2.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Локализация',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ru', ''),
        Locale('uz', ''),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 133, 133),
        primaryColor: Colors.redAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Vinipooh(),
      },
    );
  }
}

class Vinipooh extends StatelessWidget {
  const Vinipooh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translation = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(translation.title),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.redAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("Language", style: TextStyle(fontSize: 30)),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/icons/RU.png"),
                title: Text(
                  'Русский',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/icons/US.png"),
                title: Text(
                  'США',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/icons/UZ.png"),
                title: Text(
                  'Узбекский',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    body:
    Column(
      children: [
        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/vini.jpg'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Винни-Пух',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Январь 17, 2022'),
                    Text('4 банки - РУБ20'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/oslik.jpg'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ослик Иа-Иа',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Январь 18, 2022'),
                    Text('1 банка - РУБ5'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/sova.jpg'),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Сова',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Январь 16, 2022'),
                    Text('Пока ничего - РУБ0'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
