import '../clothescaresearch_screen/widgets/addressform_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class ClothescaresearchScreen extends StatelessWidget {
  ClothescaresearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          // width: 406.h,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 58.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 139.v,
                      // width: 28.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 61.h,
                                right: 84.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.h,
                                vertical: 11.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup44,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Text(
                                "CC",
                                style: CustomTextStyles
                                    .displayMediumRubikMoonrocksIndigo90001,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Clothes Care",
                              style: theme.textTheme.displayMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 29.v,
                      width: 28.h,
                      margin: EdgeInsets.only(
                        left: 33.h,
                        top: 9.v,
                        bottom: 101.v,
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
              SizedBox(height: 59.v),
              _buildMessageStack(context),
              SizedBox(height: 45.v),
              _buildButtonRow(context),
              SizedBox(height: 99.v),
              Container(
                width: 210.h,
                margin: EdgeInsets.only(right: 60.h),
                child: Text(
                  "Privacy Policy| Terms & Conditions| Disclaimer\n© 2023 Clothes Care. All rights reserved.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageStack(BuildContext context) {
    return Container(
      height: 363.v,
      width: 334.h,
      margin: EdgeInsets.only(right: 3.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 7.v),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillGray5008,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 9.v,
                      bottom: 307.v,
                    ),
                    child: Text(
                      "Type Keywords",
                      style: CustomTextStyles.bodyMediumInter,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                    height: 17.v,
                    width: 18.h,
                    margin: EdgeInsets.only(bottom: 318.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppDecoration.fillBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    color: appTheme.black90002,
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "ADVANCED SEARCH",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 31.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 21.h,
                        crossAxisSpacing: 21.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return AddressformItemWidget();
                      },
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      right: 8.h,
                    ),
                    child: CustomTextFormField(
                      controller: messageController,
                      hintText: "Write a Message",
                      textInputAction: TextInputAction.done,
                      borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                      fillColor: appTheme.blueGray50,
                    ),
                  ),
                  SizedBox(height: 55.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              height: 39.v,
              width: 129.h,
              text: "SEARCH",
              margin: EdgeInsets.only(top: 1.v),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
            CustomElevatedButton(
              height: 40.v,
              width: 121.h,
              text: "RESET",
              buttonStyle: CustomButtonStyles.fillCyan,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
          ],
        ),
      ),
    );
  }
}
