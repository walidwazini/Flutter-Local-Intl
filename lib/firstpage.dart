import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:learn_local_and_intl/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title').tr(),
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: (){
            // Navigator.push(context,
            // MaterialPageRoute(builder: (context) => SecondPage())
            // );
            context.locale = Locale('ms');
          },
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Text('msg', style: TextStyle(color: Colors.purple),).tr(),
      ),
    );
  }
}
