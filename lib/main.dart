import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'République du Sénégal';

  @override
  Widget build(BuildContext context) {
    const Map<int, Color> color = {
      50: Color.fromRGBO(2, 42, 105, .1),
      100: Color.fromRGBO(2, 42, 105, .2),
      200: Color.fromRGBO(2, 42, 105, .3),
      300: Color.fromRGBO(2, 42, 105, .4),
      400: Color.fromRGBO(2, 42, 105, .5),
      500: Color.fromRGBO(2, 42, 105, .6),
      600: Color.fromRGBO(2, 42, 105, .7),
      700: Color.fromRGBO(2, 42, 105, .8),
      800: Color.fromRGBO(2, 42, 105, .9),
      900: Color.fromRGBO(2, 42, 105, 1),
    };

    return MaterialApp(
      title: appTitle,
      home: const MyHomePage(title: appTitle),
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF2A53C1, color),
        textTheme: TextTheme(
          headline1: GoogleFonts.merriweather(
              fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.merriweather(
              fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3: GoogleFonts.merriweather(
              fontSize: 46, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.merriweather(
              fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5: GoogleFonts.merriweather(
              fontSize: 23, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.merriweather(
              fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.merriweather(
              fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.merriweather(
              fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.openSans(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.openSans(
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.openSans(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo-ministere.jpg'),
            Container(
              padding: EdgeInsets.zero,
              child: const Center(child: Text('Salut')),
            ),
          ]),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 2, 42, 105),
              ),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Ministére du développement communautaire, de l\'Équité Sociale et Territoriale',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: const Text(
                        'Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Le Ministére'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Actualités'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Programmes'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
