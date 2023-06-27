import 'package:button_sl/pages/show_brand_button.dart';
import 'package:button_sl/pages/show_brand_reverse.dart';
import 'package:button_sl/pages/show_neutral_button.dart';
import 'package:button_sl/pages/show_neutral_reverse_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShowBrand(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text(
                'Show brand button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShowBrandReverse(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text(
                'Show brand reverse button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShowNeutralButton(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text(
                'Show neutral button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShowNeutralButtonReverse(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text(
                'Show neutral reverse button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
