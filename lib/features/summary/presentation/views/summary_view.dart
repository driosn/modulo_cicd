import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/globals/globals.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/payment_settings/payment_settings_bloc.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/summary/application/bloc/summary_bloc.dart';
import 'package:resident_app/features/summary/presentation/widgets/home_card.dart';
import 'package:resident_app/features/summary/presentation/widgets/simple_home_card.dart';
import 'package:resident_app/features/summary/presentation/widgets/summary_cards/summary_payment_card.dart';
import 'package:resident_app/features/user/user_feature.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

import '../../../delete_my_account/application/bloc/delete_account_bloc.dart';
import '../../../delete_my_account/data/datasources/delete_api_datasource.dart';
import '../../../delete_my_account/data/repositories/delete_accounts_repository_impl.dart';
import '../../../payment_account/common/error_parser.dart';

class SummaryView extends StatefulWidget {
  const SummaryView({super.key});

  static const route = 'summary';

  @override
  State<SummaryView> createState() => _SummaryViewState();
}

class _SummaryViewState extends State<SummaryView> {
  final _localizations = locator<MaLocalizations>().I;
  final userBloc = locator<UserBloc>();
  final siteBloc = locator<SiteBloc>();
  final summaryBloc = locator<SummaryBloc>();
  final _paymentSettingsBloc = locator<PaymentSettingsBloc>();
  final _paymentAccountsBloc = locator<PaymentAccountsBloc>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  @override
  void initState() {
    super.initState();
    _getUser();
    _getSite();
    _getPaymentSettings();
    _getSummaryContent();
    _getPaymentAccounts();

    if (locator<LanguagePreferenceBloc>().state.isLanguageSelected) {
      locator<LanguagePreferenceBloc>().add(
        LanguagePreferenceEvent.update(residentUserId: userBloc.state.user.residentUserId),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _getSite() {
    siteBloc.add(
      SiteEvent.selectByResidentId(
        siteBloc.state.selectedSite.resident.residentId,
      ),
    );
  }

  void _getPaymentSettings() {
    _paymentSettingsBloc.add(
      PaymentSettingsEvent.getPaymentSettings(
        userBloc.state.user.propertyId,
        PayToType.rent(),
      ),
    );
  }

  void _getUser() {
    userBloc.add(UserEvent.getUser());
  }

  void _getSummaryContent() {
    summaryBloc.add(
      SummaryEvent.getSummaryContent(
        selectedSite: siteBloc.state.selectedSite,
        user: userBloc.state.user,
      ),
    );
  }

  void _selectSite() {
    if (userBloc.state.user.associatedSites.isNotEmpty) {
      _openSiteSelectorDrawer.value = true;
      _openDrawer();
    }
  }

  void _getPaymentAccounts() {
    final paymentAccountsBloc = locator.get<PaymentAccountsBloc>();
    paymentAccountsBloc.add(
      PaymentAccountsEvent.getPaymentAccounts(
        residentId: siteBloc.state.selectedSite.resident.residentId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    context.read<MAThemeBloc>().add(
          MAThemeEvent.updateTheme(
            getTheme(
              textBase: locator<MAColorpaletteBloc>().state.palette.textBase,
            ),
          ),
        );

    return MultiBlocProvider(
        providers: [
          BlocListener<PaymentSettingsBloc, PaymentSettingsState>(
            bloc: _paymentSettingsBloc,
            listener: (context, state) {
              state.maybeWhen(
                success: (displayBankAccount, _, __, ___, ____, _____, isRBCPaymentAccount) {
                  _paymentAccountsBloc.add(
                    PaymentAccountsEvent.setIsRBCPaymentAccount(
                      isRBCPaymentAccount: isRBCPaymentAccount,
                    ),
                  );
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<SignInBloc, SignInState>(
            bloc: locator<SignInBloc>(),
            listener: (context, state) {
              state.when(
                initial: () => {
                  // debugPrint('MAIN initial')
                },
                loading: () => {
                  // debugPrint('MAIN loading')
                },
                loggedOut: () => {
                  // loggedOut performing cleanup.. Probably duplicated from drawer logic but not 100% sure yet if this logic will occur in all cases yet so being defensive and leaving for now.
                  // debugPrint('MAIN loggedOut performing cleanup... Probably duplicated from sign in view '),
                  // TODO we need to clean things up here..
                  // NOTE the signout happens later to refresh the SignInState
                  // locator<SignInBloc>().add(const SignInEvent.signedOut());
                  // locator<CrashlyticsHelper>().cleanKeysAndUser(),

                  //TODO: reactive after refactor
                  // locator<WhitelabelBloc>()
                  //     .add(const WhitelabelEvent.resetWhitelabel());
                  context.read<UserPreferencesBloc>().add(
                        const UserPreferencesEvent.restart(),
                      ),

                  locator<UserBloc>().add(const UserEvent.restart()),
                  locator<PropertyPaymentSettingsBloc>().add(const PropertyPaymentSettingsEvent.restart()),
                  locator<PayByTextBloc>().add(const PayByTextEvent.reset()),
                  locator<PaymentsBloc>().add(const PaymentsEvent.restart()),

                  //TODO This String was created temporarily to retrieve the API Json from RemoteConfig, please remove it as soon as MA API is implemented
                  userRemoteConfig = "",
                },
                sessionExpired: () => {
                  // debugPrint('MAIN sessionExpired'),
                  context.goNamed(AuthRoutes.sessionExpired.name!),
                },
                success: (user, navigateToSummary) => {
                  // debugPrint('MAIN success')
                },
                biometricsFailure: (failureMessage) {},
                failure: (failureMessage) {
                  // debugPrint('MAIN error: $failureMessage');
                  // context.closeAnyOpenedDialog();
                },
              );
            },
          ),
          BlocProvider(
            create: (context) => DeleteAccountBloc(
              accountRepository: DeleteAccountsRepositoryImpl(
                deleteRemoteDataSource: DeleteApiDataSource(dio: locator<Dio>()),
                errorParser: ErrorParser(),
              ),
            ),
          ),
        ],
        child: BlocConsumer<SiteBloc, SiteState>(
          bloc: siteBloc,
          listenWhen: (oldState, state) {
            return oldState.selectedSite != state.selectedSite;
          },
          listener: (context, state) {
            _getSummaryContent();
            _getPaymentAccounts();
          },
          builder: (context, state) {
            return BlocListener<UserBloc, UserState>(
              bloc: userBloc,
              listener: (context, state) {
                _getSummaryContent();
              },
              child: Scaffold(
                key: _scaffoldKey,
                backgroundColor: colorPalette.surfaceContainerLowest,
                drawer: ValueListenableBuilder<bool>(
                    valueListenable: _openSiteSelectorDrawer,
                    builder: (context, openSiteSelectorDrawer, child) {
                      if (openSiteSelectorDrawer) {
                        return SiteSelectorDrawer(
                          onClosedDrawer: () => _openSiteSelectorDrawer.value = false,
                        );
                      }
                      return MADrawer(
                        items: MADrawer.defaultItems,
                      );
                    }),
                appBar: MAAppBar(
                  iconTheme: IconThemeData(
                    color: colorPalette.iconBaseTextIcon,
                  ),
                  backgroundColor: colorPalette.surfaceContainerLowest,
                  title: BlocBuilder<WhitelabelBloc, WhitelabelState>(
                    bloc: locator<WhitelabelBloc>(),
                    builder: (context, state) {
                      return Text(
                        state.whitelabel.appName,
                        style: textTheme.titleSmall,
                      );
                    },
                  ),
                ),
                body: BlocBuilder<SummaryBloc, SummaryState>(
                  bloc: summaryBloc,
                  builder: (context, state) {
                    const loader = Center(
                      child: MACircularProgressIndicator(),
                    );

                    return state.when(
                      initial: () => loader,
                      loading: () => loader,
                      success: (summaryContent) {
                        final summaryAnnouncement = summaryContent.summaryAnnouncement;
                        final announcement = summaryAnnouncement.announcement;

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              SummaryPaymentCard(
                                primarySite: summaryContent.primarySite,
                                onTapSite: () {
                                  _selectSite();
                                },
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              summaryContent.summaryAnnouncement.announcement == null
                                  ? SimpleHomeCard(
                                      title: _localizations.announcementsCardTitle,
                                      text: _localizations.announcementsEmpty,
                                    )
                                  : HomeCard.announcements(
                                      site: userBloc.state.user.primarySite,
                                      title: _localizations.announcementsCardTitle,
                                      borderColor: colorPalette.cardBorder,
                                      announcementBody: announcement!.body,
                                      announcementSubject: announcement.subject,
                                      announcementNewCount: summaryAnnouncement.announcementsNewCount,
                                    ),
                            ],
                          ),
                        );
                      },
                      failure: (message) => const Center(
                        child: Text('Unexpected Exception'),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ));
  }
}
