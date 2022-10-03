import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive/Adaptive.dart';
import 'package:responsive/constants.dart';

class DesktopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [

          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.orange,
            ),
          ),
          Expanded(
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

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
