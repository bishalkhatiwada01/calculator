import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  double firstNum = 0.0;
  double secondNUm = 0.0;
  var input = '';
  var output = '';
  var operation = "";

  onButtonClick(value) {
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          //input output area
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      input,
                      style: const TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      output,
                      style: TextStyle(
                          fontSize: 30, color: Colors.white.withOpacity(0.7)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
            )),

            //buttons area
            Row(
              children: [
                button(text: 'AC'),
                button(
                    text: '<',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
                button(
                  text: '',
                  buttonBGColor: Colors.transparent,
                ),
                button(
                    text: '/',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
              ],
            ),
            Row(
              children: [
                button(text: '7'),
                button(
                  text: '8',
                ),
                button(
                  text: '9',
                ),
                button(
                    text: 'x',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
              ],
            ),
            Row(
              children: [
                button(text: '4'),
                button(
                  text: '5',
                ),
                button(
                  text: '6',
                ),
                button(
                    text: '-',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
              ],
            ),
            Row(
              children: [
                button(text: '1'),
                button(
                  text: '2',
                ),
                button(
                  text: '3',
                ),
                button(
                    text: '+',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
              ],
            ),
            Row(
              children: [
                button(
                    text: '%',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
                button(
                  text: '0',
                ),
                button(
                    text: '.',
                    buttonBGColor: operatorColor,
                    textColor: orangeColor),
                button(text: '=', buttonBGColor: orangeColor),
              ],
            ),
          ],
        ));
  }

  Widget button({
    text,
    textColor = Colors.white,
    buttonBGColor = buttonColor,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(22),
              primary: buttonBGColor,
            ),
            onPressed: () => onButtonClick(text),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: textColor),
            )),
      ),
    );
  }
}
