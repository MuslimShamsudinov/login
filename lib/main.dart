import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp((LOGIN()));
}

class LOGIN extends StatelessWidget {
  const LOGIN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false  ,
    home: Login(),
    );
  }
}
