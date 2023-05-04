import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/ResultPage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                )),
            height: 170,
            // width: ,

            child: Column(children: [
              Row(children: [
                SizedBox(
                  height: 49,
                  width: 18,
                ),
                Text(
                  '<---',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ]),
              Expanded(
                  child: Row(
                children: [
                  SizedBox(
                    height: 16,
                    width: 39,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              )),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 40,
                    ),
                    Text('Enter your 10-digit mobile number to continue',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 235,
          ),
          TextField(
            cursorHeight: 45,
            obscureText: false,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                hintText: '+996 ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 4)),
                labelText: 'your number',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black))),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          InkWell(
            onTap: (){
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) =>ResultPage()),
                ));
            }   ,
            child: Container(
              height: 50,
              width: 490,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
        
     ] ));
    
  }
}
