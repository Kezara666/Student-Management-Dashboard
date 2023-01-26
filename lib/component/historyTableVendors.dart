import 'package:flutter/material.dart';
//import 'package:responsive_dashboard/component/deletedPopup.dart';

import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/dataVendors.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

import 'Vendors.dart';
import 'Vendor_profile.dart';


class HistoryTableVendors extends StatelessWidget {
  const HistoryTableVendors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context) ? double.infinity : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment:
          TableCellVerticalAlignment.middle,
          children: List.generate(
            Vendor.length,
                (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(Vendor[index]["avatar"]),
                  ),
                ),
                PrimaryText(
                  text: Vendor[index]["label"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  //time dnvnm eka
                  text: "",
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Vendor[index]["amount"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.delete_forever_rounded),
                    onPressed: () {
                      print(Vendor[index]);

                      //deleted pop menu

                      Vendor.remove(Vendor[index]);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return Vendors();
                          }

                      ));
                    }
                ),

                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.confirmation_number_rounded),
                    onPressed: () {
                      print(Vendor[index]);

                      //deleted pop menu



                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(context)=>Vendor_profile(
                              (Vendor[index]["avatar"])
                          )

                      ));
                    }
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

}


