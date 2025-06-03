import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/routes.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

enum HomeCardType {
  custom,
  payments,
  community,
  announcements,
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.title,
    required this.borderColor,
    required this.lastPayment,
    required this.rentBalance,
    required this.site,
    this.type = HomeCardType.custom,
    this.announcementBody,
    this.announcementSubject,
    this.announcementNewCount,
  });

  factory HomeCard.payments({
    required String title,
    required Color borderColor,
    required Site site,
    required double? rentBalance,
    required double? lastPayment,
  }) {
    return HomeCard(
      title: title,
      borderColor: borderColor,
      site: site,
      rentBalance: rentBalance,
      lastPayment: lastPayment,
      type: HomeCardType.payments,
    );
  }

  factory HomeCard.community({
    required String title,
    required Color borderColor,
    required Site site,
  }) {
    return HomeCard(
      title: title,
      borderColor: borderColor,
      site: site,
      lastPayment: null,
      rentBalance: null,
      type: HomeCardType.community,
    );
  }

  factory HomeCard.announcements({
    required String title,
    required Color borderColor,
    required Site site,
    required String announcementSubject,
    required String announcementBody,
    required int announcementNewCount,
  }) {
    return HomeCard(
      title: title,
      borderColor: borderColor,
      site: site,
      lastPayment: null,
      rentBalance: null,
      type: HomeCardType.announcements,
      announcementBody: announcementBody,
      announcementSubject: announcementSubject,
      announcementNewCount: announcementNewCount,
    );
  }

  final String title;
  final Color borderColor;
  final HomeCardType type;
  final Site site;
  final double? rentBalance;
  final double? lastPayment;
  final String? announcementSubject;
  final String? announcementBody;
  final int? announcementNewCount;

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = locator<ColorPalette>();

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(
          color: borderColor,
          width: 2.0,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 1,
            color: colorPalette.cardBorder,
          ),
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0,
            color: colorPalette.cardBorder,
          ),
        ],
        color: colorPalette.cardBg,
      ),
      width: double.infinity,
      child: type == HomeCardType.payments
          ? _PaymentsContent(
              title: title,
              site: site,
              lastPayment: lastPayment,
              rentBalance: rentBalance,
            )
          : type == HomeCardType.community
              ? _CommunityContent(
                  title: title,
                  site: site,
                )
              : type == HomeCardType.announcements
                  ? _AnnouncementContent(
                      title: title,
                      site: site,
                      badgeColor: colorPalette.badgeMultiChar,
                      content: announcementBody ?? '',
                      subject: announcementSubject ?? '',
                      newCount: announcementNewCount ?? 0,
                    )
                  : const SizedBox(),
    );
  }
}

abstract class _BaseHomeCardContent {
  Widget header();
  Widget mainContent();
  Widget actionBar();
}

class _PaymentsContent extends StatefulWidget {
  const _PaymentsContent({
    required this.title,
    required this.rentBalance,
    required this.lastPayment,
    required this.site,
  });

  final String title;
  final Site site;
  final double? rentBalance;
  final double? lastPayment;

  @override
  State<_PaymentsContent> createState() => _PaymentsContentState();
}

class _PaymentsContentState extends State<_PaymentsContent>
    implements _BaseHomeCardContent {
  late NumberFormat _currencyFormatter;
  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();

  @override
  void initState() {
    _currencyFormatter = locator<NumberFormatterHelper>().currencyFormat;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        mainContent(),
        actionBar(),
      ],
    );
  }

  @override
  Widget header() {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              widget.title,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 11.5,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              color: _colorPalette.badgeMultiChar,
            ),
            child: Text(
              _localizations.paymentCardOnTime,
              style: theme.textTheme.bodySmall?.copyWith(
                color: _colorPalette.badgeMultiCharLabel,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget mainContent() {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    Language selectedLanguage =
        context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english
        ? DateFormat.yMMMd('en_US')
        : DateFormat.yMMMd('es_US');

    Widget paymentInfo({
      required String title,
      required CrossAxisAlignment crossAxisAlignment,
      required double? amount,
      required String subtitle,
    }) {
      return Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            title,
            style: theme.textTheme.labelSmall,
          ),
          SizedBox(
            height: amount == null ? 16 : 8,
          ),
          amount != null
              ? Text(
                  '\$${_currencyFormatter.format(amount)}',
                  style: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w700, height: 32 / 24),
                )
              : Text(
                  _localizations.paymentCardNoPrior,
                  style: theme.textTheme.labelSmall,
                ),
          const SizedBox(
            height: 8,
          ),
          if (amount != null)
            Text(
              subtitle,
              style: theme.textTheme.labelSmall,
            )
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: colorPalette.tertiaryBase,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 17,
                      child: SvgPicture.asset(
                        'assets/home.svg',
                        colorFilter: ColorFilter.mode(
                          colorPalette.iconBaseTextIcon,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.site.address1,
                            style: theme.textTheme.bodyMedium,
                          ),
                          Text(
                            '${widget.site.city}, ${widget.site.state} ${widget.site.zipCode}',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
                width: 24,
                child: Center(
                  child: Icon(
                    Icons.chevron_right,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: paymentInfo(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    amount: widget.rentBalance,
                    title: _localizations.paymentCardRentBalance,
                    subtitle: 'Autopay ${dateFormat.format(DateTime.now())}',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: paymentInfo(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    amount: widget.lastPayment,
                    title: _localizations.paymentCardLastPayment,
                    subtitle:
                        '${_localizations.paid} ${dateFormat.format(DateTime.now())}',
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget actionBar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 24,
        top: 20,
      ),
      child: MAElevatedButton.primary(
        child: Text(
          _localizations.paymentCardGoToPayments,
        ),
        onPressed: () {
          context.goNamed(MakeAPaymentRoutes.makeAPayment.name!);
        },
      ),
    );
  }
}

class _CommunityContent extends StatefulWidget {
  const _CommunityContent({
    required this.title,
    required this.site,
  });

  final String title;
  final Site site;

  @override
  State<_CommunityContent> createState() => _CommunityContentState();
}

class _CommunityContentState extends State<_CommunityContent>
    implements _BaseHomeCardContent {
  final _localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(),
        mainContent(),
        actionBar(),
      ],
    );
  }

  @override
  Widget header() {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Text(
        widget.title,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  @override
  Widget mainContent() {
    return SizedBox(
      width: double.infinity,
      child: Image.asset('assets/images/dummy_community_photo.png'),
    );
  }

  @override
  Widget actionBar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 25,
        bottom: 24,
        top: 30,
      ),
      child: MAElevatedButton.primary(
        child: Text(
          _localizations.communityCardExplore,
        ),
        onPressed: () {},
      ),
    );
  }
}

class _AnnouncementContent extends StatefulWidget {
  const _AnnouncementContent({
    required this.title,
    required this.site,
    required this.subject,
    required this.content,
    required this.newCount,
    required this.badgeColor,
  });

  final String title;
  final String subject;
  final String content;
  final int newCount;
  final Site site;
  final Color badgeColor;

  @override
  State<_AnnouncementContent> createState() => _AnnouncementContentState();
}

class _AnnouncementContentState extends State<_AnnouncementContent>
    implements _BaseHomeCardContent {
  final _localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          const SizedBox(
            height: 20,
          ),
          mainContent(),
          const SizedBox(
            height: 28,
          ),
          actionBar(),
        ],
      ),
    );
  }

  @override
  Widget header() {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.title,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Visibility(
          visible: widget.newCount != 0,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 11.5,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              color: widget.badgeColor,
            ),
            child: Text(
              '${widget.newCount} ${_localizations.announcementsCardNew}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorPalette.badgeMultiCharLabel,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget mainContent() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.content,
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget actionBar() {
    return MAElevatedButton(
      child: Text(_localizations.announcementsCardViewAll),
      onPressed: () {
        context.goNamed(AnnouncementsRoutes.announcements.name!);
      },
    );
  }
}
