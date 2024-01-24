import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:pankaj_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class UserprofileScreen extends StatelessWidget {
  UserprofileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameEditTextController =
      TextEditingController(text: "Jeshika rai");

  TextEditingController emailEditTextController =
      TextEditingController(text: "Jeshika@gmail.com");

  TextEditingController birthdayEditTextController =
      TextEditingController(text: "2000-01-10");

  TextEditingController homeAddressEditTextController =
      TextEditingController(text: "Kathmandu");
  TextEditingController phoneController =
      TextEditingController(text: "9810000000");

  TextEditingController aboutController =
      TextEditingController(text: "Software developer");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 43.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 126.v,
                          width: 132.h,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 86.h),
                            child: Text(
                              "Jeshika Rai",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 61.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Full Name",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildFullNameEditText(context),
                        SizedBox(height: 28.v),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "Email Address",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildEmailEditText(context),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Phone Number",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildPhoneEditText(context),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Birthday",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        _buildBirthdayEditText(context),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Home Address",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildHomeAddressEditText(context),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "About Users",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        _buildFullNameEditText1(context)
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "User Profile",
      ),
      actions: [
        Container(
          height: 29.v,
          width: 28.h,
          margin: EdgeInsets.fromLTRB(29.h, 9.v, 29.h, 25.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 29.v,
                width: 23.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 2.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLine3,
                height: 21.v,
                width: 28.h,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 4.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: CustomTextFormField(
        controller: fullNameEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: CustomTextFormField(
        controller: emailEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildBirthdayEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: CustomTextFormField(
        controller: birthdayEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: CustomTextFormField(
        controller: phoneController,
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeAddressEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: CustomTextFormField(
        controller: homeAddressEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        top: 4,
        // right: 43.h,
        bottom: 36.v,
      ),
      child: CustomTextFormField(
        controller: aboutController,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
