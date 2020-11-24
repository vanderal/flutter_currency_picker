import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo for currency picker package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo for currency picker')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showCurrencyPicker(
              context: context,
              onSelect: (Currency currency) {
                print('Select currency: ${currency.name}');
              },
              currencyFilter: ['cad', 'cop', 'dop'],
            );
          },
          child: const Text('Show currency picker'),
        ),
      ),
    );
  }
}
