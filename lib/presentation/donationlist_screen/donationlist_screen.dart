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
                            width: 220.h,
                            controller: searchController,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        SizedBox(
                          height: 660.v,
                          width: 377.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 3.h,
                                    right: 1.h,
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  decoration:
                                      AppDecoration.fillBluegray100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 9.v,
                                          bottom: 631.v,
                                        ),
                                        child: Text(
                                          "S.N.",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: SizedBox(
                                          height: 659.v,
                                          child: VerticalDivider(
                                            width: 1.h,
                                            thickness: 1.v,
                                            color: appTheme.black90002,
                                            indent: 1.h,
                                            endIndent: 3.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 12.h,
                                          top: 9.v,
                                          bottom: 631.v,
                                        ),
                                        child: Text(
                                          "ID",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: SizedBox(
                                          height: 660.v,
                                          child: VerticalDivider(
                                            width: 1.h,
                                            thickness: 1.v,
                                            // indent: 1.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 4.h,
                                          top: 8.v,
                                          bottom: 631.v,
                                        ),
                                        child: Text(
                                          "Donation Item",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 7.v,
                                          right: 18.h,
                                          bottom: 631.v,
                                        ),
                                        child: Text(
                                          "Notes",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 659.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 72.h),
                                  child: SizedBox(
                                    height: 658.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 73.h),
                                      child: Text(
                                        "Donation Date",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 31.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 31.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 31.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 31.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 31.v),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgLine20,
                                    //   height: 309.v,
                                    //   width: 376.h,
                                    // ),
                                  ],
                                ),
                              ),
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
