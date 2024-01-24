import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_radio_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class DonationreqformscreenScreen extends StatefulWidget {
  DonationreqformscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<DonationreqformscreenScreen> createState() =>
      _DonationreqformscreenScreenState();
}

class _DonationreqformscreenScreenState
    extends State<DonationreqformscreenScreen> {
  String doesThisRequestComeFromAnIndivRadioGroup = "";

  List<String> radioList = ["lbl_individual", "lbl_organization"];

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController postalCodeEditTextController = TextEditingController();

  TextEditingController eventNameEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildDonationRequestStack(context),
                        SizedBox(height: 29.v),
                        Divider(
                          color: appTheme.black90002,
                        ),
                        SizedBox(height: 22.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 324.h,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              right: 59.h,
                            ),
                            child: Text(
                              "Does this request come from an individual or an organization?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        _buildDoesThisRequestComeFromAnIndivRadioGroup(context),
                        SizedBox(height: 26.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text(
                              "Organizational Name",
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        _buildNameEditText(context),
                        SizedBox(height: 13.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 48.h,
                            right: 44.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildFirstNameColumn(context),
                              _buildLastNameColumn(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text(
                              "Email Address",
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildEmailEditText(context),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text(
                              "Phone Number",
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildPhoneNumberEditText(context),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text(
                              "Postal Code",
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildPostalCodeEditText(context),
                        SizedBox(height: 13.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text(
                              "EVENT DETAILS:",
                              style: CustomTextStyles.bodyMediumJejuMyeongjo,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 52.h),
                            child: Text(
                              "Name of Event:",
                              style: CustomTextStyles.titleSmall14,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildEventNameEditText(context),
                        SizedBox(height: 14.v),
                        Text(
                          "Short Description of Event with Aims and Objectives",
                          style: CustomTextStyles.titleSmall14,
                        ),
                        SizedBox(height: 4.v),
                        Container(
                          height: 107.v,
                          width: 315.h,
                          decoration: BoxDecoration(
                            color: appTheme.red50,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
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
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDonationRequestStack(BuildContext context) {
    return SizedBox(
      height: 66.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 14.v,
            width: 21.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 2.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack90002,
            height: 20.v,
            width: 16.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 2.h),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Donation Request Form",
              style: theme.textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoesThisRequestComeFromAnIndivRadioGroup(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 78.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                right: 20.h,
              ),
              child: CustomRadioButton(
                text: "Individual",
                value: radioList[0],
                groupValue: doesThisRequestComeFromAnIndivRadioGroup,
                textStyle: theme.textTheme.bodyMedium,
                onChange: (value) {
                  setState(() {
                    doesThisRequestComeFromAnIndivRadioGroup = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                bottom: 2.v,
              ),
              child: CustomRadioButton(
                text: "Organization",
                value: radioList[1],
                groupValue: doesThisRequestComeFromAnIndivRadioGroup,
                textStyle: theme.textTheme.bodyMedium,
                onChange: (value) {
                  setState(() {
                    doesThisRequestComeFromAnIndivRadioGroup = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 47.h,
        right: 44.h,
      ),
      child: CustomTextFormField(
        controller: nameEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            "First Name",
            style: CustomTextStyles.titleSmall14,
          ),
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          width: 122.h,
          controller: firstNameController,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLastNameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "Last Name",
            style: CustomTextStyles.titleSmall14,
          ),
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          width: 135.h,
          controller: lastNameController,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 45.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: emailEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 45.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildPostalCodeEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: postalCodeEditTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildEventNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 45.h,
        right: 46.h,
      ),
      child: CustomTextFormField(
        controller: eventNameEditTextController,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "SUBMIT",
      margin: EdgeInsets.only(
        left: 19.h,
        right: 19.h,
        bottom: 19.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }
}
