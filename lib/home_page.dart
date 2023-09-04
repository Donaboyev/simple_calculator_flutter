import 'common_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _text = '';

  void _addNumber(int number) {
    setState(() {
      _text = '$_text$number';
    });
  }

  void _addArithmetic(String action) {
    setState(() {
      _text = '$_text$action';
    });
  }

  void _calculate() {
    if (_text.contains('+')) {
      /// '784983+4873857
      double firstNumber = double.parse(_text.substring(0, _text.indexOf('+')));
      double secondNumber =
          double.parse(_text.substring(_text.indexOf('+') + 1, _text.length));
      setState(() {
        _text = '${firstNumber + secondNumber}';
      });
    } else if (_text.contains('-')) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 80,
              width: 400,
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Text(
                _text,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 100),
            Row(
              children: [
                CommonButton(
                  text: '7',
                  onTap: () {
                    _addNumber(7);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                CommonButton(
                  text: '8',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '9',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '/',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CommonButton(
                  text: '4',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '5',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '6',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '*',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CommonButton(
                  text: '1',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '2',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '3',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '-',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CommonButton(
                  text: '.',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '0',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: 'CLR',
                  onTap: () {},
                ),
                SizedBox(width: 10),
                CommonButton(
                  text: '+',
                  onTap: () {
                    _addArithmetic('+');
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(400, 60),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                _calculate();
              },
              child: const Text(
                '=',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
