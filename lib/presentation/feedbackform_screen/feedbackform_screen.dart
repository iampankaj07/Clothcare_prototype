import '../feedbackform_screen/widgets/radiolist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class FeedbackformScreen extends StatelessWidget {
  FeedbackformScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 9.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildFeedbackFormRow(context),
              SizedBox(height: 40.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(
                  children: [
                    _buildWeDLikeYourFeedbackStack(context),
                    SizedBox(height: 14.v),
                    _buildRadioList(context),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 6.h,
                      ),
                      child: CustomTextFormField(
                        controller: editTextController,
                        borderDecoration: TextFormFieldStyleHelper.fillGray1,
                        fillColor: appTheme.gray5001,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        right: 0.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 9.v),
                            child: Text(
                              "How would you rate our Application?",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(
                              left: 38.h,
                              bottom: 4.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillGray5007.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Text(
                              "0",
                              style: CustomTextStyles.labelLargeBlack90002,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      height: 11.v,
                      width: 307.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7.v,
                              width: 307.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray5005,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 11.v,
                              width: 12.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildFirstNameColumn(context),
                          _buildLastNameColumn(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Email Address",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.h),
                      child: CustomTextFormField(
                        controller: emailController,
                        textInputAction: TextInputAction.done,
                        borderDecoration: TextFormFieldStyleHelper.fillGray2,
                        fillColor: appTheme.gray5009,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Phone Number",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      height: 30.v,
                      width: 301.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray5009,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    CustomElevatedButton(
                      height: 41.v,
                      text: "SUBMIT FEEDBACK",
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 10.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillCyan,
                      buttonTextStyle: CustomTextStyles.titleLargeRed5001,
                    ),
                    SizedBox(height: 17.v),
                  ],
                ),
              ),
              SizedBox(height: 65.v),
              SizedBox(
                width: 210.h,
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
  Widget _buildFeedbackFormRow(BuildContext context) {
    return SizedBox(
      height: 80.v,
      width: 357.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Text(
                    "Feedback Form",
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                Container(
                  height: 29.v,
                  width: 28.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    bottom: 51.v,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: SizedBox(
                width: 357.h,
                child: Divider(
                  color: appTheme.black90002,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeDLikeYourFeedbackStack(BuildContext context) {
    return SizedBox(
      height: 16.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "We’d like your feedback to improve our Application.",
              style: theme.textTheme.labelLarge,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "We’d like your feedback to improve our Application.",
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRadioList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 5.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 8.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return RadiolistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "First Name",
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          width: 144.h,
          controller: firstNameController,
          borderDecoration: TextFormFieldStyleHelper.fillGray2,
          fillColor: appTheme.gray5009,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLastNameColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Last Name",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            width: 144.h,
            controller: lastNameController,
            borderDecoration: TextFormFieldStyleHelper.fillGray2,
            fillColor: appTheme.gray5009,
          ),
        ],
      ),
    );
  }
}
