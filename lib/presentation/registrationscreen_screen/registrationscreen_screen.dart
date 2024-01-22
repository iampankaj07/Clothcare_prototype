import '../registrationscreen_screen/widgets/seventytwochipview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:pankaj_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class RegistrationscreenScreen extends StatelessWidget {
  RegistrationscreenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 85.h,
                    margin: EdgeInsets.only(
                      left: 133.h,
                      right: 148.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
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
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "First Name",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  SizedBox(height: 7.v),
                                  _buildFirstNameEditText(context),
                                ],
                              ),
                            ),
                          ),
                          _buildNinetyOneColumn(context),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Phone Number",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildPhoneNumberEditText(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "Email Address",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildEmailEditText(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Password",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  _buildPasswordEditText(context),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Confirm Password",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildConfirmPasswordEditText(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Postal Address",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildAddressEditText(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "Date of Birth",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    height: 31.v,
                    width: 117.h,
                    margin: EdgeInsets.only(left: 29.h),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        _buildDateOfBirthEditText(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 31.v,
                          width: 15.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 31.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "Gender",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  _buildSeventyTwoChipView(
                    context,
                  ),
                  SizedBox(height: 21.v),
                  _buildRegisterButton(
                    context,
                  ),
                  SizedBox(height: 31.v),
                  _buildGuestLoginButton(context),
                  SizedBox(height: 12.v),
                  _buildContinueAsGoogleButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Clothes Care",
      ),
      actions: [
        Container(
          height: 29.v,
          width: 28.h,
          margin: EdgeInsets.fromLTRB(22.h, 8.v, 22.h, 20.v),
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
  Widget _buildFirstNameEditText(BuildContext context) {
    return CustomTextFormField(
      width: 141.h,
      controller: firstNameEditTextController,
    );
  }

  /// Section Widget
  Widget _buildNinetyOneColumn(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "First Name",
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              width: 141.h,
              controller: firstNameController,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberEditTextController,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: emailEditTextController,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: passwordEditTextController,
        alignment: Alignment.center,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: confirmPasswordEditTextController,
        alignment: Alignment.center,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: addressEditTextController,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthEditText(BuildContext context) {
    return CustomTextFormField(
      width: 117.h,
      controller: dateOfBirthEditTextController,
      textInputAction: TextInputAction.done,
      alignment: Alignment.center,
      borderDecoration: TextFormFieldStyleHelper.fillGray,
      fillColor: appTheme.gray5002,
    );
  }

  /// Section Widget
  Widget _buildSeventyTwoChipView(
    BuildContext context,
  ) {
    List gender = ["Male", "Female", "Other"];
    return Padding(
      padding: EdgeInsets.only(left: 25.h),
      child: Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children: List<Widget>.generate(
            3,
            (index) => SeventytwochipviewItemWidget(gender: gender[index]),
          )),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
      }),
      text: "REGISTER",
      margin: EdgeInsets.only(right: 9.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.headlineSmallInterGray100,
    );
  }

  /// Section Widget
  Widget _buildGuestLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 35.v,
      text: "Guest Login",
      margin: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildContinueAsGoogleButton(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "Continue as Google",
      margin: EdgeInsets.only(
        left: 25.h,
        right: 26.h,
      ),
      alignment: Alignment.center,
    );
  }
}
