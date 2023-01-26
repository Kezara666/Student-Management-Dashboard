import 'package:flutter/material.dart';
//import 'package:responsive_dashboard/component/deletedPopup.dart';
import 'package:responsive_dashboard/component/products.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/dataProduct.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class HistoryTableProducts extends StatelessWidget {
  const HistoryTableProducts({
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
            Product.length,
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
                    backgroundImage: NetworkImage(Product[index]["avatar"]),
                  ),
                ),
                PrimaryText(
                  text: Product[index]["label"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Product[index]["category"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Product[index]["amount"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: Product[index]["mobile"],
                  size: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.delete_forever_rounded),
                    onPressed: () {
                      print(Product[index]);

                      //deleted pop menu

                      Product.remove(Product[index]);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return Products();
                          }

                      ));
                    }
                ),
                TextButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      print(Product[index]);

                      //deleted pop menu

                      Product.remove(Product[index]);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(_){
                            return Products();
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


