import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/dashboard.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/absence.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/contact.dart';
import 'package:flutter_auth/emploi.dart';
import 'package:flutter_auth/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      initialRoute: '/',
       routes: {
           '/':((context) => const WelcomeScreen()),
           '/Dashboard':((context) =>  Dashboard()),
           '/profile':(context) => SettingsPage(),
           '/emploi':(context) => Emploi(),
           '/absence':(context) => Absence(),
           '/contact':(context) => MyHomePage()
          },
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
         
      
    );
  }
}
