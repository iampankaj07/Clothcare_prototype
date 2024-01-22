import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class AddressformItemWidget extends StatelessWidget {
  const AddressformItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillBluegray50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Post Code",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Container(
            height: 7.v,
            width: 14.h,
            margin: EdgeInsets.only(
              left: 35.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: Divider(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
