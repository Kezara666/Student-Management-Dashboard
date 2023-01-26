import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../dashboard.dart';
import '../../style/colors.dart';


Widget ProductPrice(){
  return Stack(
    children: <Widget>[

      TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter The Product Price',
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
      ),



    ],
  );
}
