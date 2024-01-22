import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class DonationformScreen extends StatelessWidget {
  DonationformScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController fullNameController1 = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController idEditTextController = TextEditingController();

  TextEditingController donationProductsEditTextController =
      TextEditingController();

  TextEditingController notesEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 43.h),
                    child: Column(
                      children: [
                        Text(
                          "Donation Form",
                          style: theme.textTheme.displayMedium,
                        ),
                        SizedBox(height: 45.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildDonationFormColumn(context),
                              _buildDonationFormColumn1(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Email Address",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildEmailEditText(context),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Home Address",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildAddressEditText(context),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Phone Number",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildPhoneNumberEditText(context),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "ID",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildIdEditText(context),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Donation Products",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildDonationProductsEditText(context),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Notes",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildNotesEditText(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      actions: [
        Container(
          height: 29.v,
          width: 28.h,
          margin: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 13.v,
          ),
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
  Widget _buildDonationFormColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "Full Name",
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 5.v),
            CustomTextFormField(
              width: 145.h,
              controller: fullNameController,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationFormColumn1(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "Full Name",
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(height: 3.v),
            CustomTextFormField(
              width: 145.h,
              controller: fullNameController1,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
    );
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return CustomTextFormField(
      controller: addressEditTextController,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberEditTextController,
    );
  }

  /// Section Widget
  Widget _buildIdEditText(BuildContext context) {
    return CustomTextFormField(
      controller: idEditTextController,
    );
  }

  /// Section Widget
  Widget _buildDonationProductsEditText(BuildContext context) {
    return CustomTextFormField(
      controller: donationProductsEditTextController,
    );
  }

  /// Section Widget
  Widget _buildNotesEditText(BuildContext context) {
    return CustomTextFormField(
      controller: notesEditTextController,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      height: 51.v,
      text: "SUBMIT",
      margin: EdgeInsets.only(
        left: 32.h,
        right: 28.h,
        bottom: 14.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }
}
