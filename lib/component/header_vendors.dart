

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

import 'AddVendors/ButtonAddMenu.dart';
import 'AddVendors/Avatar.dart';
import 'AddVendors/VendorExtra.dart';
import 'AddVendors/nameTestField.dart';


class Header_vendors extends StatelessWidget {
  const Header_vendors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(
                      text: 'Vendors',
                      size: 30,
                      fontWeight: FontWeight.w800),

                  PrimaryText(
                    text: 'All Venors In Store',
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondary,
                  ),
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
                                      Text("Add Vendor"),

                                      SizedBox(
                                        height: 20,
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      nameTestField(),

                                      SizedBox(
                                        height: 20,
                                      ),

                                      DropdownButton<String>(
                                        hint: Text('Select category '),
                                        items: <String>['Pharmacy', 'Grocery', 'Food'].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,

                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String changedValue) {
                                          var newValue=changedValue;

                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      VendorExtra(),
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
