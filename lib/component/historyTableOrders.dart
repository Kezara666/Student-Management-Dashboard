import 'package:flutter/material.dart';
//import 'package:responsive_dashboard/component/deletedPopup.dart';

import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/dataOrders.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

import 'orders.dart';

class HistoryTableOrders extends StatelessWidget {
  const HistoryTableOrders({
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
            Order.length,
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
                    backgroundImage: NetworkImage(Order[index]["avatar"]),
                  ),
                ),
                PrimaryText(
                  text: Order[index]["label"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Order[index]["time"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Order[index]["amount"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.delete_forever_rounded),
                    onPressed: () {
                      print(Order[index]);

                      //deleted pop menu

                      Order.remove(Order[index]);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return Orders();
                          }

                      ));
                    }
                ),

                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.confirmation_number_rounded),
                    onPressed: () {
                      print(Order[index]);

                      //deleted pop menu



                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return Orders();
                          }

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


