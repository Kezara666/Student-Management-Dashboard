import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/orders.dart';
import 'package:responsive_dashboard/component/products.dart';


Widget ButtonAddMenu(BuildContext context) {
  return Row(
    children: [
      Positioned(
          bottom: 20.0,
          right: 20.0,
      child:
      ElevatedButton(
        onPressed: () {


          Navigator.of(context).push(MaterialPageRoute(
                        builder: (_){
                          return Orders();}));





        },
        child: Text('Add'),

        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      ))

    ],
  );
}