import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';
import 'package:pankaj_s_application6/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class RadiolistItemWidget extends StatelessWidget {
  RadiolistItemWidget({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomRadioButton(
            text: "Suggestion",
            value: "Suggestion",
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomRadioButton(
              text: "Comment",
              value: "Comment",
              groupValue: radioGroup1,
              onChange: (value) {
                radioGroup1 = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomRadioButton(
              text: "Feedback",
              value: "Feedback",
              groupValue: radioGroup2,
              onChange: (value) {
                radioGroup2 = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
