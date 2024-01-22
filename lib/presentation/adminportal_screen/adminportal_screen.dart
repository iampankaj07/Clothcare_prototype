import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';

class AdminportalScreen extends StatelessWidget {
  const AdminportalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 417.h,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 29.v,
                          width: 28.h,
                          margin: EdgeInsets.only(right: 39.h),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLine3,
                                height: 21.v,
                                width: 28.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 29.v,
                                width: 23.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 2.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      _buildHelloAdminRow(context),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 33.v,
                                bottom: 500.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 17.v),
                                  Text(
                                    "Admin Profile",
                                    style: CustomTextStyles.titleSmall14,
                                  ),
                                  SizedBox(height: 17.v),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, AppRoutes.userprofileScreen);
                                    },
                                    child: Text(
                                      "Users Profile",
                                      style: CustomTextStyles.titleSmall14,
                                    ),
                                  ),
                                  SizedBox(height: 15.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Text(
                                      "Areas",
                                      style: CustomTextStyles.titleSmall14,
                                    ),
                                  ),
                                  SizedBox(height: 16.v),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          AppRoutes.donationlistScreen);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Donations",
                                            style:
                                                CustomTextStyles.titleSmall14,
                                          ),
                                          SizedBox(width: 10.v),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.v),
                                  Text(
                                    "Organizations",
                                    style: CustomTextStyles.titleSmall14,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 688.v,
                                width: 302.h,
                                margin: EdgeInsets.only(left: 12.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        decoration: AppDecoration.fillBlueGray,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 302.h,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 4.h,
                                                vertical: 8.v,
                                              ),
                                              decoration:
                                                  AppDecoration.fillBlue700,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v),
                                                    child: Text(
                                                      "S.N.",
                                                      style: CustomTextStyles
                                                          .labelLargeWhiteA700,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 2.v,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Text(
                                                      "Product Name",
                                                      style: CustomTextStyles
                                                          .labelLargeWhiteA700,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 12.h,
                                                      top: 2.v,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Text(
                                                      "Size",
                                                      style: CustomTextStyles
                                                          .labelLargeWhiteA700,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 12.h,
                                                      top: 4.v,
                                                    ),
                                                    child: Text(
                                                      "Qty",
                                                      style: CustomTextStyles
                                                          .labelLargeWhiteA700,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 2.v,
                                                      right: 10.h,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Text(
                                                      "Action",
                                                      style: CustomTextStyles
                                                          .labelLargeWhiteA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8.v),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h),
                                              child: _buildThreeRow(
                                                context,
                                                labelText: "1",
                                                labelText1: "Trousers",
                                                labelText2: "M",
                                                labelText3: "20",
                                                editText: "Edit",
                                                deleteText: "Delete",
                                              ),
                                            ),
                                            SizedBox(height: 9.v),
                                            _buildFortySixRow(
                                              context,
                                              dynamicText: "2",
                                              dynamicText1: "T-shirts",
                                              dynamicText2: "S",
                                              dynamicText3: "25",
                                              edit: "Edit",
                                              delete: "Delete",
                                            ),
                                            SizedBox(height: 9.v),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h),
                                              child: _buildThreeRow(
                                                context,
                                                labelText: "3",
                                                labelText1: "Jackets",
                                                labelText2: "S",
                                                labelText3: "30",
                                                editText: "Edit",
                                                deleteText: "Delete",
                                              ),
                                            ),
                                            SizedBox(height: 8.v),
                                            _buildFortySixRow(
                                              context,
                                              dynamicText: "4",
                                              dynamicText1: "Shirts",
                                              dynamicText2: "XS",
                                              dynamicText3: "18",
                                              edit: "Edit",
                                              delete: "Delete",
                                            ),
                                            SizedBox(height: 9.v),
                                            Container(
                                              width: 285.h,
                                              margin: EdgeInsets.only(
                                                left: 10.h,
                                                right: 7.h,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    child: Text(
                                                      "5",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 37,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Text(
                                                      "Socks",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 62,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.v),
                                                    child: Text(
                                                      "S",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 29.h,
                                                      bottom: 5.v,
                                                    ),
                                                    child: Text(
                                                      "36",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 42.h,
                                                    margin: EdgeInsets.only(
                                                        left: 16.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 1.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillBluegray400,
                                                    child: Text(
                                                      "Edit",
                                                      style: CustomTextStyles
                                                          .labelMediumGray50,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 42.h,
                                                    margin: EdgeInsets.only(
                                                        left: 8.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillOnError,
                                                    child: Text(
                                                      "Delete",
                                                      style: CustomTextStyles
                                                          .labelMediumGray5006,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8.v),
                                            _buildFortySixRow(
                                              context,
                                              dynamicText: "6",
                                              dynamicText1: "Caps",
                                              dynamicText2: "M",
                                              dynamicText3: "45",
                                              edit: "Edit",
                                              delete: "Delete",
                                            ),
                                            SizedBox(height: 9.v),
                                            Container(
                                              width: 287.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 7.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Text(
                                                      "7",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 38,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v),
                                                    child: Text(
                                                      "Gloves",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 61,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: Text(
                                                      "XS",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 22.h,
                                                      top: 2.v,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Text(
                                                      "39",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 42.h,
                                                    margin: EdgeInsets.only(
                                                        left: 16.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 2.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillBluegray400,
                                                    child: Text(
                                                      "Edit",
                                                      style: CustomTextStyles
                                                          .labelMediumGray50,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 42.h,
                                                    margin: EdgeInsets.only(
                                                        left: 8.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillOnError,
                                                    child: Text(
                                                      "Delete",
                                                      style: CustomTextStyles
                                                          .labelMediumGray5006,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 32.v,
                                              width: 302.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.gray5002,
                                              ),
                                            ),
                                            SizedBox(height: 36.v),
                                            Container(
                                              height: 32.v,
                                              width: 302.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.gray5002,
                                              ),
                                            ),
                                            SizedBox(height: 35.v),
                                            Container(
                                              height: 32.v,
                                              width: 302.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.gray5002,
                                              ),
                                            ),
                                            SizedBox(height: 36.v),
                                            Container(
                                              height: 32.v,
                                              width: 302.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.gray5002,
                                              ),
                                            ),
                                            SizedBox(height: 41.v),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloAdminRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 53.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse21,
                height: 59.v,
                width: 61.h,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              SizedBox(height: 6.v),
              Text(
                "Hello, Admin",
                style: CustomTextStyles.bodyMediumKaushanScript,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 27.v),
            child: Text(
              "Admin Portal",
              style: theme.textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThreeRow(
    BuildContext context, {
    required String labelText,
    required String labelText1,
    required String labelText2,
    required String labelText3,
    required String editText,
    required String deleteText,
  }) {
    return SizedBox(
      width: 286.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              labelText,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Spacer(
            flex: 42,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              labelText1,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Spacer(
            flex: 57,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              labelText2,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              bottom: 4.v,
            ),
            child: Text(
              labelText3,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Container(
            width: 42.h,
            margin: EdgeInsets.only(left: 18.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBluegray400,
            child: Text(
              editText,
              style: CustomTextStyles.labelMediumGray50.copyWith(
                color: appTheme.gray50,
              ),
            ),
          ),
          Container(
            width: 42.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillOnError,
            child: Text(
              deleteText,
              style: CustomTextStyles.labelMediumGray5006.copyWith(
                color: appTheme.gray5006,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFortySixRow(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
    required String edit,
    required String delete,
  }) {
    return Container(
      width: 302.h,
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              bottom: 4.v,
            ),
            child: Text(
              dynamicText,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Spacer(
            flex: 37,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              dynamicText1,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Spacer(
            flex: 62,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              dynamicText2,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              bottom: 5.v,
            ),
            child: Text(
              dynamicText3,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          Container(
            width: 42.h,
            margin: EdgeInsets.only(left: 19.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBluegray400,
            child: Text(
              edit,
              style: CustomTextStyles.labelMediumGray50.copyWith(
                color: appTheme.gray50,
              ),
            ),
          ),
          Container(
            width: 42.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillOnError,
            child: Text(
              delete,
              style: CustomTextStyles.labelMediumGray5006.copyWith(
                color: appTheme.gray5006,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
