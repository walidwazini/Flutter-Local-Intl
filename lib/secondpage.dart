import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:learn_local_and_intl/firstpage.dart';

class SecondPage extends StatefulWidget {
  //const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.locale = Locale('ms');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text('Test'),
              ),
            ),
          ),
          Expanded(
              child: InkWell(
            onTap: () {
              context.locale = Locale('en');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Text('Test 2'),
            ),
          ))
        ],
      ),
    );
  }
}
