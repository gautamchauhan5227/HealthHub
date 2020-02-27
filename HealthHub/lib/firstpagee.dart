import 'package:flutter/material.dart';

import 'loginpage.dart';
// import 'loginpage.dart';

class FirstPagee extends StatefulWidget {
  
  @override
  _FirstPageeState createState() => _FirstPageeState();
}

class _FirstPageeState extends State<FirstPagee> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ));
  }
  @override
  Widget build(BuildContext context) {
     MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.green[50],
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Center(
              child: Image.asset(
                'asset/1.png',
                width: queryData.size.width*0.75,
                height: queryData.size.height*0.45,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}