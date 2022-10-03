import 'package:flutter/material.dart';

import 'Adaptive.dart';
import 'constants.dart';

class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            Expanded(
    child: Container(
      width: double.infinity,
      color: Colors.orange,
    ),
    ),

            Expanded(
              flex:2,//علشان ال Expanded دي تكون ضعف من اى واحده تانى
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'login with your account',
    style:Theme.of(context).textTheme.headline6
    ),
    SizedBox(
    height: 15.0,
    ),
    TextFormField(
    decoration: InputDecoration(
    border:OutlineInputBorder(),
    labelText: 'Email Adress',
    ),
    ),
    SizedBox(
    height: 15.0,
    ),
    TextFormField(
    decoration: InputDecoration(
    border:OutlineInputBorder(),
    labelText: 'Password',
    ),
    ),
    SizedBox(
    height: 15.0,
    ),
    Row(
    children: [
    Expanded(
    child: Container(
    height:35.0,
    color: Colors.orange,
    child: MaterialButton(
    onPressed: (){},
    child:Text(
    'LOGIN',
    style: TextStyle(
    fontSize: 14.0,
    color: Colors.white
    ),

    ) ,
    ),
    ),
    ),
    SizedBox(
    width: 15.0,
    ),
    Expanded(
    child: Container(
    height:35.0,
    color: Colors.orange,
    child: MaterialButton(
    onPressed: (){},
    child:Text(
    'REGISTER',
    style: TextStyle(
    fontSize: 14.0,
    color: Colors.white
    ),

    ) ,
    ),
    ),
    ),

    ],
    ),
      SizedBox(
        height: 15.0,
      ),

      Center(
        child: Adaptive(
          os: getOS(),
        ),
      ),
    ],
    ),
    ),
    ),
    ],
    ),
    );
  }
}
