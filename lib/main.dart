import 'package:button_sl/package/brand_button.dart';
import 'package:button_sl/package/enums.dart';
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
      appBar: AppBar(
        title: const Text(
          'Button Design Sysmtem...',
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Brand Button'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                  size: SLSize.large,
                ),
                SizedBox(
                  width: 12,
                ),
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                  size: SLSize.medium,
                ),
                SizedBox(
                  width: 12,
                ),
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                  size: SLSize.small,
                ),
              ],
            ),
            Row(
              children: [
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                ),
                SizedBox(
                  width: 12,
                ),
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                ),
                SizedBox(
                  width: 12,
                ),
                SLBrand(
                  label: 'Button',
                  type: SLType.soild,
                  shape: SLShape.pill,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
