import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

import 'info_field.dart';

class ContactInformationReadMode extends StatelessWidget {
  ContactInformationReadMode({
    super.key,
    required this.scaffoldKey,
    required this.openSiteSelectorDrawerNotifier,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final ValueNotifier<bool> openSiteSelectorDrawerNotifier;

  final _localizations = locator<MaLocalizations>().I;

  final userBloc = locator<UserBloc>();
  final siteBloc = locator<SiteBloc>();
  final propertyPaymentSetting = locator<PropertyPaymentSettingsBloc>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    final scalerConfig = locator<ScalerConfig>();

    return BlocBuilder<SiteBloc, SiteState>(
      bloc: siteBloc,
      builder: (context, siteState) {
        final primarySite = siteState.selectedSite;
        final resident = primarySite.resident;

        return Scaffold(
          backgroundColor: colorPalette.surfaceContainerLowest,
          body: RelationalPadding(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MASpacing.xxl(),
                  Text(
                    _localizations.contactInformationLabel,
                    style: theme.textTheme.titleLarge,
                  ),
                  MASpacing.l(),
                  SiteAddress(
                    site: siteState.selectedSite,
                    iconColor: colorPalette.iconBaseTextIcon,
                    textColor: colorPalette.textBase,
                    onTap: () {
                      openSiteSelectorDrawerNotifier.value = true;
                      scaffoldKey.currentState?.openDrawer();
                    },
                    padding: EdgeInsets.symmetric(
                      vertical: scalerConfig.spacingM,
                    ),
                  ),
                  MADivider(
                    height: 1,
                    color: colorPalette.surfaceDim,
                  ),
                  MASpacing.l(),
                  Text(
                    '${resident.firstName} ${resident.lastName}',
                    style: theme.textTheme.titleSmall,
                  ),
                  MASpacing.xxl(),
                  MASpacing.l(),
                  InfoField(
                    title: _localizations.siteAddress.toUpperCase(),
                    values: [
                      "${primarySite.address1}\n${primarySite.city}, ${primarySite.state} ${primarySite.zipCode}",
                    ],
                  ),
                  MASpacing.xxl(),
                  MASpacing.l(),
                  InfoField(
                    title: _localizations.emailField.toUpperCase(),
                    values: [resident.residentEmail],
                  ),
                  MASpacing.xxl(),
                  MASpacing.l(),
                  InfoField(
                    title: _localizations.cellPhoneField.toUpperCase(),
                    values: [resident.cellPhone.phoneFormatter()],
                  ),
                  MASpacing.xxl(),
                  MASpacing.l(),
                  InfoField(
                      title: _localizations.homePhoneField.toUpperCase(),
                      values: [
                        resident.homePhone.phoneFormatter(),
                      ]),
                  MASpacing.xxl(),
                  MASpacing.l(),
                  InfoField(
                    title: _localizations.mailingAddressField.toUpperCase(),
                    values: [
                      resident.useBillingAddress
                          ? "${resident.billingAddress}\n${resident.billingCity} ${resident.billingState}, ${resident.billingPostalCode}"
                          : "${primarySite.address1}\n${primarySite.city} ${primarySite.state}, ${primarySite.zipCode}"
                    ],
                  ),
                  MASpacing.xxl(),
                  MASpacing.l(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
