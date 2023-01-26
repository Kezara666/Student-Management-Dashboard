

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/component/Addproduct/Avatar.dart';
import 'package:responsive_dashboard/component/Addproduct/ButtonAddMenu.dart';
import 'package:responsive_dashboard/component/Addproduct/productQNT.dart';


import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

import 'dart:io';

import 'Addproduct/ProductPrice.dart';
import 'Addproduct/nameTestField.dart';




class Header_product extends StatelessWidget {
  const Header_product({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String newValue;
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(
                      text: 'Student',
                      size: 30,
                      fontWeight: FontWeight.w800),

                  PrimaryText(
                    text: 'All Students In Storage',
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondary,
                  ),
                  //product zdding button
                  IconButton(onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(

                            child: Container(

                                height: 450,
                                width: 500,
                                padding: const EdgeInsets.all(20.0),

                                child: ListView(
                                    children: <Widget>[
                                      Text("Add Student"),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter the RegId',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter the Name ',
                                        ),
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter the Name of City',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),

                                      productQNT(),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Avatar(context),
                                      Center(

                                        child: ButtonAddMenu(context),

                                      )







                                    ]
                                )
                            ),


                          );
                        }

                    );
                  }, icon: Icon(Icons.add)),
                ]),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 3,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding:
                  EdgeInsets.only(left: 40.0, right: 5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.white),
                  ),
                  prefixIcon: Icon(Icons.search, color: AppColors.black),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: AppColors.secondary, fontSize: 14)
              ),
            ),
          ),
        ]);
  }



}