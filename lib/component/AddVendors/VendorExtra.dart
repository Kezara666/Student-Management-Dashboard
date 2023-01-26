import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../dashboard.dart';
import '../../style/colors.dart';


Widget VendorExtra(){
  return Stack(
    children: <Widget>[

        TextField(
        maxLines: 8, //or null
        decoration: InputDecoration.collapsed(hintText: "Enter Vendor Details Here"),
      ),



    ],
  );
}
