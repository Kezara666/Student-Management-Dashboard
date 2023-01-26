import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../dashboard.dart';
import '../../style/colors.dart';


  Widget nameTestField(){
    return Stack(
      children: <Widget>[

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter the Name of Vendor',
          ),
        ),



      ],
    );
  }
