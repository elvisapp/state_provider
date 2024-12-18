import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TextModel(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textModel = Provider.of<TextModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("State Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textModel.displayText,
              style: TextStyle(fontSize: 24, color: textModel.textColor),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => textModel.changeText(),
              child: Text("Trocar Texto"),
            ),
          ],
        ),
      ),
    );
  }
}

class TextModel extends ChangeNotifier {
  String _displayText = "Olá, elvis.com!";
  Color _textColor = Colors.black;

  String get displayText => _displayText;
  Color get textColor => _textColor;

  void changeText() {
    if (_displayText == "Olá, elvis.com!") {
      _displayText = "Texto Alterado!";
      _textColor = Colors.blue;
    } else {
      _displayText = "Olá, elvis.com!";
      _textColor = Colors.black;
    }
    notifyListeners();
  }
}
