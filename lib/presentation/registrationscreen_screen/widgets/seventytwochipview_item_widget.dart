import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class SeventytwochipviewItemWidget extends StatelessWidget {
  String gender;
  SeventytwochipviewItemWidget({Key? key, required this.gender})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.all(9.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        gender,
        style: TextStyle(
          color: theme.colorScheme.errorContainer,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primaryContainer,
      selectedColor: appTheme.red300,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      onSelected: (value) {},
    );
  }
}
