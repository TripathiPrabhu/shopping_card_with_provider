import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card_with_provider/Screens/firstScreen.dart';
import 'package:shopping_card_with_provider/Screens/secondScreen.dart';
import 'package:shopping_card_with_provider/provider_models/DataProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return DataProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/FirstScreen',
        routes: {
          '/FirstScreen': (context) => FirstScreen(),
          '/SecondScreen': (context) => SecondScreen()
        },
      ),
    );
  }
}
