import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_search_view.dart';

class DonationlistScreen extends StatelessWidget {
  DonationlistScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 406.h,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 26.v),
                    padding: EdgeInsets.symmetric(horizontal: 13.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 67.h,
                              right: 14.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 26.v),
                                  child: Text(
                                    "Donation List",
                                    style: theme.textTheme.displayMedium,
                                  ),
                                ),
                                Container(
                                  height: 29.v,
                                  width: 28.h,
                                  margin: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 61.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 29.v,
                                        width: 23.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 2.h),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLine3,
                                        height: 21.v,
                                        width: 28.h,
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: CustomSearchView(
                            // width: 220.h,
                            controller: searchController,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          color: appTheme.blueGray100,
                          // padding: EdgeInsets.all(20.0),
                          child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(2),
                              3: FlexColumnWidth(2),
                              4: FlexColumnWidth(2),
                            },
                            border: TableBorder.all(color: Colors.black),
                            children: [
                              TableRow(children: [
                                Center(
                                  child: Text(
                                    "S.N.",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "ID",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Donation Item",
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Donation Date",
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Notes",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Center(child: Text('1')),
                                Center(child: Text('0101')),
                                Center(child: Text('Clothes')),
                                Center(child: Text('2024-02-02')),
                                Center(child: Text('donated')),
                              ]),
                              TableRow(children: [
                                Center(child: Text('2')),
                                Center(child: Text('033')),
                                Center(child: Text('Clothes')),
                                Center(child: Text('2024-02-02')),
                                Center(child: Text('donated')),
                              ])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
