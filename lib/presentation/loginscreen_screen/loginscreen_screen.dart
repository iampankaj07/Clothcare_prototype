import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_checkbox_button.dart';
import 'package:pankaj_s_application6/widgets/custom_elevated_button.dart';
import 'package:pankaj_s_application6/widgets/custom_text_form_field.dart';

class LoginscreenScreen extends StatelessWidget {
  LoginscreenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 406.h,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 70.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 139.v,
                        // width: 228.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 61.h,
                                  right: 81.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.h,
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
                          left: 21.h,
                          top: 3.v,
                          bottom: 107.v,
                        ),
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "Email Address/ Phone Number",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 14.h,
                ),
                child: CustomTextFormField(
                  controller: phoneNumberController,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "Password",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 14.h,
                ),
                child: CustomTextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  obscureText: true,
                ),
              ),
              SizedBox(height: 17.v),
              _buildRememberMe(context),
              Spacer(),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.dashboardScreen);
                },
                height: 58.v,
                text: "LOG IN",
                margin: EdgeInsets.only(
                  left: 19.h,
                  right: 14.h,
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL25,
                buttonTextStyle: CustomTextStyles.headlineLargeInikaGray5004,
                alignment: Alignment.center,
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "Forgot Password?",
                  style: CustomTextStyles.titleSmallJosefinSlab,
                ),
              ),
              SizedBox(height: 99.v),
              Padding(
                padding: EdgeInsets.only(left: 74.h),
                child: Text(
                  "Don’t have an account? Sign Up",
                  style: CustomTextStyles.labelLarge12,
                ),
              ),
              SizedBox(height: 22.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: CustomCheckboxButton(
        text: "Remember Me",
        value: rememberMe,
        onChange: (value) {
          rememberMe = value;
        },
      ),
    );
  }
}
