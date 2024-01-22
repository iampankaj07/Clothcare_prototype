import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumJejuMyeongjo =>
      theme.textTheme.bodyMedium!.jejuMyeongjo.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumKaushanScript =>
      theme.textTheme.bodyMedium!.kaushanScript;
  // Display text style
  static get displayMediumRubikMoonrocksIndigo90001 =>
      theme.textTheme.displayMedium!.rubikMoonrocks.copyWith(
        color: appTheme.indigo90001,
        fontSize: 48.fSize,
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displayMediumRubikMoonrocksIndigo90001Dash =>
      theme.textTheme.displayMedium!.rubikMoonrocks.copyWith(
        color: appTheme.indigo90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeInikaGray5004 =>
      theme.textTheme.headlineLarge!.inika.copyWith(
        color: appTheme.gray5004,
      );
  static get headlineSmallInterGray100 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBlack90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumGray50 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get labelMediumGray5006 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray5006,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeRed5001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red5001,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallJosefinSlab => theme.textTheme.titleSmall!.josefinSlab;
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }

  TextStyle get rubikMoonrocks {
    return copyWith(
      fontFamily: 'Rubik Moonrocks',
    );
  }

  TextStyle get josefinSlab {
    return copyWith(
      fontFamily: 'Josefin Slab',
    );
  }

  TextStyle get kalam {
    return copyWith(
      fontFamily: 'Kalam',
    );
  }

  TextStyle get jejuMyeongjo {
    return copyWith(
      fontFamily: 'JejuMyeongjo',
    );
  }

  TextStyle get kaushanScript {
    return copyWith(
      fontFamily: 'Kaushan Script',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get knewave {
    return copyWith(
      fontFamily: 'Knewave',
    );
  }

  TextStyle get salsa {
    return copyWith(
      fontFamily: 'Salsa',
    );
  }

  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }
}
