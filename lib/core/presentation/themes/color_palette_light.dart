import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';

class ColorPaletteLight implements ColorPalette {
  @override
  Color primaryBase = const Color(0xff0366dd);
  @override
  Color primary100 = const Color(0xfff5f9ff);
  @override
  Color primary200 = const Color(0xffe6f1ff);
  @override
  Color primary300 = const Color(0xffcde3fe);
  @override
  Color primary400 = const Color(0xffafd2fe);
  @override
  Color primary500 = const Color(0xff81b9fd);
  @override
  Color primary600 = const Color(0xff358ffc);
  @override
  Color primary700 = const Color(0xff025ac3);
  @override
  Color primary800 = const Color(0xff024392);
  @override
  Color primary900 = const Color(0xff002c61);
  @override
  Color primary1000 = const Color(0xff011e41);
  @override
  Color secondaryBase = const Color(0xff02aade);
  @override
  Color secondary100 = const Color(0xfff5fdff);
  @override
  Color secondary200 = const Color(0xffccf3ff);
  @override
  Color secondary300 = const Color(0xff99e6fe);
  @override
  Color secondary400 = const Color(0xff67dafe);
  @override
  Color secondary500 = const Color(0xff34cdfd);
  @override
  Color secondary600 = const Color(0xff02c1fc);
  @override
  Color secondary700 = const Color(0xff019aca);
  @override
  Color secondary800 = const Color(0xff017498);
  @override
  Color secondary900 = const Color(0xff004d65);
  @override
  Color secondary1000 = const Color(0xff002733);
  @override
  Color tertiaryBase = const Color(0xff1fde02);
  @override
  Color tertiary100 = const Color(0xfff7fef5);
  @override
  Color tertiary200 = const Color(0xffd4fbcf);
  @override
  Color tertiary300 = const Color(0xffaaf89f);
  @override
  Color tertiary400 = const Color(0xff80f56f);
  @override
  Color tertiary500 = const Color(0xff56f23f);
  @override
  Color tertiary600 = const Color(0xff2cef0f);
  @override
  Color tertiary700 = const Color(0xff23bf0c);
  @override
  Color tertiary800 = const Color(0xff1a8f09);
  @override
  Color tertiary900 = const Color(0xff115f06);
  @override
  Color tertiary1000 = const Color(0xff082f03);
  @override
  Color aquaAccent = const Color(0xff02decb);
  @override
  Color deepBlueAccent = const Color(0xff0220de);
  @override
  Color grayishBlueAccent = const Color(0xff315178);
  @override
  Color purpleAccent = const Color(0xff775ee0);
  @override
  Color magentaAccent = const Color(0xffde0299);
  @override
  Color chartreuseAccent = const Color(0xffb8de02);
  @override
  Color darkOliveAccent = const Color(0xff565e30);
  @override
  Color pumpkinAccent = const Color(0xffABF99F);
  @override
  Color goldAccent = const Color(0xffdebc02);
  @override
  Color surfaceContainerLowest = const Color(0xffffffff);
  @override
  Color surface = const Color(0xfff9fafa);
  @override
  Color surfaceBright = const Color(0xfff4f5f6);
  @override
  Color surfaceContainerLow = const Color(0xffeeeff1);
  @override
  Color surfaceContainer = const Color(0xffe9eaed);
  @override
  Color surfaceContainerHigh = const Color(0xffe3e5e8);
  @override
  Color surfaceContainerHighest = const Color(0xffdde0e3);
  @override
  Color surfaceDim = const Color(0xffd8dbdf);
  @override
  Color outlineVariant = const Color(0xffabb1ba);
  @override
  Color outline = const Color(0xff737d8b);
  @override
  Color onSurfaceVariant = const Color(0xff454b54);
  @override
  Color onSurface = const Color(0xff17191c);
  @override
  Color appBarBg = const Color(0xff035ac4);
  @override
  Color appBarTextIcon = const Color(0xfff5fdff);
  @override
  Color appBarAccent = const Color(0xff1fde02);
  @override
  Color badgeDot = const Color(0xff775ee0);
  @override
  Color badgeSingleChar = const Color(0xff775ee0);
  @override
  Color badgeSingleCharLabel = const Color(0xfff5fdff);
  @override
  Color badgeMultiChar = const Color(0xffaaf89f);
  @override
  Color badgeMultiCharLabel = const Color(0xff011e41);
  @override
  Color buttonPrimaryBg = const Color(0xff0366dd);
  @override
  Color buttonPrimaryDisabledBg = const Color(0xffe6f1ff);
  @override
  Color buttonPrimaryDisabledLabel = const Color(0xfff5fdff);
  @override
  Color buttonPrimaryOnTapBg = const Color(0xff024392);
  @override
  Color buttonPrimaryLabel = const Color(0xfff5fdff);
  @override
  Color buttonSecondaryBg = const Color(0xfff5f9ff);
  @override
  Color buttonSecondaryBorder = const Color(0xffe6f1ff);
  @override
  Color buttonSecondaryLabel = const Color(0xff035ac4);
  @override
  Color buttonSecondaryOnTapBg = const Color(0xffe6f1ff);
  @override
  Color buttonSecondaryDisabledBorder = const Color(0xffe6f1ff);
  @override
  Color buttonSecondaryDisabledLabel = const Color(0xffe6f1ff);
  @override
  Color buttonSecondaryDisabledBg = const Color(0xfff5f9ff);
  @override
  Color buttonSegmentedBorder = const Color(0xffabb1ba);
  @override
  Color buttonSegmentedSelectedBg = const Color(0xffccf3ff);
  @override
  Color buttonSegmentedUnselectedBg = const Color(0xffffffff);
  @override
  Color buttonSegmentedSelectedLabel = const Color(0xff002c61);
  @override
  Color buttonSegmentedUnselectedLabel = const Color(0xff002c61);
  @override
  Color buttonFabBg = const Color(0xff0366dd);
  @override
  Color buttonFabLabel = const Color(0xfff5fdff);
  @override
  Color cardBorder = const Color(0xffe9eaed);
  @override
  Color cardBg = const Color(0xffffffff);
  @override
  Color chipWipBorder = const Color(0xffd9d9d9);
  @override
  Color chipWipBorderBg = const Color(0xffd9d9d9);
  @override
  Color chipWipBorderLabel = const Color(0xffd9d9d9);
  @override
  Color chipWipFilledBg = const Color(0xffd9d9d9);
  @override
  Color chipWipFilledLabel = const Color(0xffd9d9d9);
  @override
  Color iconBaseTextIcon = const Color(0xff002c61);
  @override
  Color iconLinkTextIcon = const Color(0xff017498);
  @override
  Color iconSuccess = const Color(0xff51bf3f);
  @override
  Color inputFieldCheckboxCheck = const Color(0xfff5fdff);
  @override
  Color inputFieldCheckboxSelected = const Color(0xff025ac3);
  @override
  Color inputFieldCheckboxUnselectedBorder = const Color(0xffabb1ba);
  @override
  Color inputFieldCheckboxUnselected = const Color(0xffffffff);
  @override
  Color inputFieldInputBg = const Color(0xffffffff);
  @override
  Color inputFieldInputBorderNormal = const Color(0xffe3e5e8);
  @override
  Color inputFieldInputBorderFocus = const Color(0xff025ac3);
  @override
  Color inputFieldInputBorderSelected = const Color(0xff025ac3);
  @override
  Color inputFieldInputBorderWarning = const Color(0xffd30651);
  @override
  Color inputFieldRadioSelected = const Color(0xff025ac3);
  @override
  Color inputFieldRadioUnselected = const Color(0xffabb1ba);
  @override
  Color inputFieldSwitchSliderOn = const Color(0xfff5fdff);
  @override
  Color inputFieldSwitchTrackOn = const Color(0xff025ac3);
  @override
  Color inputFieldSwitchSliderOff = const Color(0xff737d8b);
  @override
  Color inputFieldSwitchTrackOff = const Color(0xffe9eaed);
  @override
  Color layoutSurfaceBase = const Color(0xffffffff);
  @override
  Color layoutSurfaceRaised = const Color(0xffffffff);
  @override
  Color layoutScrimSurface = const Color(0xffcde3fe);
  @override
  Color layoutSkeletonLoading = const Color(0xffe9eaed);
  @override
  Color navigationDrawerIconText = const Color(0xff035ac4);
  @override
  Color navigationDrawerBg = const Color(0xffffffff);
  @override
  Color navigationDrawerSubmenuBg = const Color(0xfff5fdff);
  @override
  Color snackbarSuccess = const Color(0xffaaf89f);
  @override
  Color snackbarSuccessLabel = const Color(0xff002c61);
  @override
  Color statusBarBg = const Color(0xff025ac3);
  @override
  Color statusBarTextIcon = const Color(0xfff5fdff);
  @override
  Color textBase = const Color(0xff002c61);
  @override
  Color textMuted = const Color(0xff737d8c);
  @override
  Color textLink = const Color(0xff017498);
  @override
  Color textBrand = const Color(0xff0366dd);
  @override
  Color warningWarning = const Color(0xffd30651);
  @override
  Color warningOnWarning = const Color(0xfffffafc);
  @override
  Color warningWarningContainer = const Color(0xffffe0ec);
  @override
  Color warningOnWarningContainer = const Color(0xff3d0018);

  ColorPaletteLight();

  ColorPaletteLight.fromModel(Whitelabel model) {
    primaryBase = getColor(model.lightPrimaryBase);
    primary100 = getColor(model.lightPrimary100);
    primary200 = getColor(model.lightPrimary200);
    primary300 = getColor(model.lightPrimary300);
    primary400 = getColor(model.lightPrimary400);
    primary500 = getColor(model.lightPrimary500);
    primary600 = getColor(model.lightPrimary600);
    primary700 = getColor(model.lightPrimary700);
    primary800 = getColor(model.lightPrimary800);
    primary900 = getColor(model.lightPrimary900);
    primary1000 = getColor(model.lightPrimary1000);
    secondaryBase = getColor(model.lightSecondaryBase);
    secondary100 = getColor(model.lightSecondary100);
    secondary200 = getColor(model.lightSecondary200);
    secondary300 = getColor(model.lightSecondary300);
    secondary400 = getColor(model.lightSecondary400);
    secondary500 = getColor(model.lightSecondary500);
    secondary600 = getColor(model.lightSecondary600);
    secondary700 = getColor(model.lightSecondary700);
    secondary800 = getColor(model.lightSecondary800);
    secondary900 = getColor(model.lightSecondary900);
    secondary1000 = getColor(model.lightSecondary1000);
    tertiaryBase = getColor(model.lightTertiaryBase);
    tertiary100 = getColor(model.lightTertiary100);
    tertiary200 = getColor(model.lightTertiary200);
    tertiary300 = getColor(model.lightTertiary300);
    tertiary400 = getColor(model.lightTertiary400);
    tertiary500 = getColor(model.lightTertiary500);
    tertiary600 = getColor(model.lightTertiary600);
    tertiary700 = getColor(model.lightTertiary700);
    tertiary800 = getColor(model.lightTertiary800);
    tertiary900 = getColor(model.lightTertiary900);
    tertiary1000 = getColor(model.lightTertiary1000);
    aquaAccent = getColor(model.lightAquaAccent);
    deepBlueAccent = getColor(model.lightDeepBlueAccent);
    grayishBlueAccent = getColor(model.lightGrayishBlueAccent);
    purpleAccent = getColor(model.lightPurpleAccent);
    magentaAccent = getColor(model.lightMagentaAccent);
    chartreuseAccent = getColor(model.lightChartreuseAccent);
    darkOliveAccent = getColor(model.lightDarkOliveAccent);
    pumpkinAccent = getColor(model.lightPumpkinAccent);
    goldAccent = getColor(model.lightGoldAccent);
    surfaceContainerLowest = getColor(model.lightSurfaceContainerLowest);
    surface = getColor(model.lightSurface);
    surfaceBright = getColor(model.lightSurfaceBright);
    surfaceContainerLow = getColor(model.lightSurfaceContainerLow);
    surfaceContainer = getColor(model.lightSurfaceContainer);
    surfaceContainerHigh = getColor(model.lightSurfaceContainerHigh);
    surfaceContainerHighest = getColor(model.lightSurfaceContainerHighest);
    surfaceDim = getColor(model.lightSurfaceDim);
    outlineVariant = getColor(model.lightOutlineVariant);
    outline = getColor(model.lightOutline);
    onSurfaceVariant = getColor(model.lightOnSurfaceVariant);
    onSurface = getColor(model.lightOnSurface);
    appBarBg = getColor(model.lightAppBarBg);
    appBarTextIcon = getColor(model.lightAppBarTextIcon);
    appBarAccent = getColor(model.lightAppBarAccent);
    badgeDot = getColor(model.lightBadgeDot);
    badgeSingleChar = getColor(model.lightBadgeSingleChar);
    badgeSingleCharLabel = getColor(model.lightBadgeSingleCharLabel);
    badgeMultiChar = getColor(model.lightBadgeMultiChar);
    badgeMultiCharLabel = getColor(model.lightBadgeMultiCharLabel);
    buttonPrimaryBg = getColor(model.lightButtonPrimaryBg);
    buttonPrimaryDisabledBg = getColor(model.lightButtonPrimaryDisabledBg);
    buttonPrimaryDisabledLabel =
        getColor(model.lightButtonPrimaryDisabledLabel);
    buttonPrimaryOnTapBg = getColor(model.lightButtonPrimaryOnTapBg);
    buttonPrimaryLabel = getColor(model.lightButtonPrimaryLabel);
    buttonSecondaryBg = getColor(model.lightButtonSecondaryBg);
    buttonSecondaryBorder = getColor(model.lightButtonSecondaryBorder);
    buttonSecondaryLabel = getColor(model.lightButtonSecondaryLabel);
    buttonSecondaryOnTapBg = getColor(model.lightButtonSecondaryOnTapBg);
    buttonSecondaryDisabledBorder =
        getColor(model.lightButtonSecondaryDisabledBorder);
    buttonSecondaryDisabledLabel =
        getColor(model.lightButtonSecondaryDisabledLabel);
    buttonSecondaryDisabledBg = getColor(model.lightButtonSecondaryDisabledBg);
    buttonSegmentedBorder = getColor(model.lightButtonSegmentedBorder);
    buttonSegmentedSelectedBg = getColor(model.lightButtonSegmentedSelectedBg);
    buttonSegmentedUnselectedBg =
        getColor(model.lightButtonSegmentedUnselectedBg);
    buttonSegmentedSelectedLabel =
        getColor(model.lightButtonSegmentedSelectedLabel);
    buttonSegmentedUnselectedLabel =
        getColor(model.lightButtonSegmentedUnselectedLabel);
    buttonFabBg = getColor(model.lightButtonFabBg);
    buttonFabLabel = getColor(model.lightButtonFabLabel);
    cardBorder = getColor(model.lightCardBorder);
    cardBg = getColor(model.lightCardBg);
    chipWipBorder = getColor(model.lightChipWipBorder);
    chipWipBorderBg = getColor(model.lightChipWipBorderBg);
    chipWipBorderLabel = getColor(model.lightChipWipBorderLabel);
    chipWipFilledBg = getColor(model.lightChipWipFilledBg);
    chipWipFilledLabel = getColor(model.lightChipWipFilledLabel);
    iconBaseTextIcon = getColor(model.lightIconBaseTextIcon);
    iconLinkTextIcon = getColor(model.lightIconLinkTextIcon);
    iconSuccess = getColor(model.lightIconSuccess);
    inputFieldCheckboxCheck = getColor(model.lightInputFieldCheckboxCheck);
    inputFieldCheckboxSelected =
        getColor(model.lightInputFieldCheckboxSelected);
    inputFieldCheckboxUnselectedBorder =
        getColor(model.lightInputFieldCheckboxUnselectedBorder);
    inputFieldCheckboxUnselected =
        getColor(model.lightInputFieldCheckboxUnselected);
    inputFieldInputBg = getColor(model.lightInputFieldInputBg);
    inputFieldInputBorderNormal =
        getColor(model.lightInputFieldInputBorderNormal);
    inputFieldInputBorderFocus =
        getColor(model.lightInputFieldInputBorderFocus);
    inputFieldInputBorderSelected =
        getColor(model.lightInputFieldInputBorderSelected);
    inputFieldInputBorderWarning =
        getColor(model.lightInputFieldInputBorderWarning);
    inputFieldRadioSelected = getColor(model.lightInputFieldRadioSelected);
    inputFieldRadioUnselected = getColor(model.lightInputFieldRadioUnselected);
    inputFieldSwitchSliderOn = getColor(model.lightInputFieldSwitchSliderOn);
    inputFieldSwitchTrackOn = getColor(model.lightInputFieldSwitchTrackOn);
    inputFieldSwitchSliderOff = getColor(model.lightInputFieldSwitchSliderOff);
    inputFieldSwitchTrackOff = getColor(model.lightInputFieldSwitchTrackOff);
    layoutSurfaceBase = getColor(model.lightLayoutSurfaceBase);
    layoutSurfaceRaised = getColor(model.lightLayoutSurfaceRaised);
    layoutScrimSurface = getColor(model.lightLayoutScrimSurface);
    layoutSkeletonLoading = getColor(model.lightLayoutSkeletonLoading);
    navigationDrawerIconText = getColor(model.lightNavigationDrawerIconText);
    navigationDrawerBg = getColor(model.lightNavigationDrawerBg);
    navigationDrawerSubmenuBg = getColor(model.lightNavigationDrawerSubmenuBg);
    snackbarSuccess = getColor(model.lightSnackbarSuccess);
    snackbarSuccessLabel = getColor(model.lightSnackbarSuccessLabel);
    statusBarBg = getColor(model.lightStatusBarBg);
    statusBarTextIcon = getColor(model.lightStatusBarTextIcon);
    textBase = getColor(model.lightTextBase);
    textMuted = getColor(model.lightTextMuted);
    textLink = getColor(model.lightTextLink);
    textBrand = getColor(model.lightTextBrand);
    warningWarning = getColor(model.lightWarningWarning);
    warningOnWarning = getColor(model.lightWarningOnWarning);
    warningWarningContainer = getColor(model.lightWarningWarningContainer);
    warningOnWarningContainer = getColor(model.lightWarningOnWarningContainer);
  }

  Color getColor(String color) {
    return Color(int.parse(
      color.substring(2),
      radix: 16,
    ));
  }

  @override
  Color grassColor = const Color(0xFFE9F2DF);
}
