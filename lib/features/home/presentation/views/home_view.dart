// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
// import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
// import 'package:resident_app/core/presentation/themes/color_palette.dart';
// import 'package:resident_app/core/presentation/themes/ma_theme.dart';
// import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
// import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
// import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
// import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
// import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
// import 'package:resident_app/core/shared/locator/locator.dart';
// import 'package:resident_app/features/announcements/application/bloc/announcements_bloc.dart';
// import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
// import 'package:resident_app/features/user/user_feature.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   static const route = 'home';

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   //
//   // Localizations
//   //
//   late AppLocalizations _localizations;

//   // TODO: Find a good place to get user data
//   final userBloc = locator<UserBloc>();
//   final homeBloc = locator<HomeBloc>();
//   final announcementsBloc = locator<AnnouncementsBloc>();
//   final propertyPaymentSettingsBloc = locator<PropertyPaymentSettingsBloc>();

//   @override
//   void initState() {
//     super.initState();
//     _localizations = locator<MaLocalizations>().I;

//     _getPropertyPaymentSettings();
//     _getAnnouncements();
//     _setHomeLoadingStatus();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   void _getPropertyPaymentSettings() => propertyPaymentSettingsBloc.add(
//         const PropertyPaymentSettingsEvent.getPropertyPaymentSettings(),
//       );

//   void _getAnnouncements() => announcementsBloc.add(
//         AnnouncementsEvent.getAnnouncements(userBloc.state.user.residentUserId),
//       );

//   void _setHomeLoadingStatus() => homeBloc.add(
//         const HomeEvent.setStatus(
//           HomeStatus.loading,
//         ),
//       );

//   @override
//   Widget build(BuildContext context) {
//     TextTheme textTheme = Theme.of(context).textTheme;
//     final colorPalette = locator<ColorPalette>();
//     context.read<MAThemeBloc>().add(
//           MAThemeEvent.updateTheme(
//             getTheme(
//               textBase: locator<MAColorpaletteBloc>().state.palette.textBase,
//             ),
//           ),
//         );
//     UserBloc userBloc = locator<UserBloc>();
//     return BlocListener<AnnouncementsBloc, AnnouncementsState>(
//       bloc: announcementsBloc,
//       listener: (context, state) {
//         if (state.announcements != null) {
//           homeBloc.add(HomeEvent.setAnnouncements(state.announcements!));
//           homeBloc.add(const HomeEvent.setStatus(HomeStatus.loaded));
//         }
//       },
//       child: Scaffold(
//         backgroundColor: colorPalette.surfaceContainerLowest,
//         drawer: MADrawer(
//           items: MADrawer.defaultItems,
//         ),
//         appBar: MAAppBar(
//           iconTheme: IconThemeData(
//             color: colorPalette.iconBaseTextIcon,
//           ),
//           backgroundColor: colorPalette.surfaceContainerLowest,
//           title: Text(
//             _localizations.residentPortal,
//             style: textTheme.titleSmall,
//           ),
//         ),
//         body: BlocBuilder<HomeBloc, HomeState>(
//           bloc: homeBloc,
//           builder: (context, state) {
//             if (state.status == HomeStatus.loading) {
//               return const Center(
//                 child: MACircularProgressIndicator(),
//               );
//             }

//             if (state.status == HomeStatus.loaded) {
//               return RelationalPadding(
//                 child: ListView(
//                   children: [
//                     HomeCard.payments(
//                       site: userBloc.state.user.primarySite,
//                       title: _localizations.paymentCardTitle,
//                       lastPayment: 1500,
//                       rentBalance: 1500,
//                       borderColor: colorPalette.cardBorder,
//                     ),
//                     const SizedBox(
//                       height: 16,
//                     ),
//                     state.announcements!.isEmpty
//                         ? SimpleHomeCard(
//                             title: _localizations.announcementsCardTitle,
//                             text: _localizations.announcementsEmpty,
//                           )
//                         : HomeCard.announcements(
//                             site: userBloc.state.user.primarySite,
//                             title: _localizations.announcementsCardTitle,
//                             borderColor: colorPalette.cardBorder,
//                             announcementBody: state.announcements!.first.body,
//                             announcementSubject:
//                                 state.announcements!.first.subject,
//                             announcementNewCount: state.announcements
//                                     ?.where((a) => a.isRead == false)
//                                     .length ??
//                                 0,
//                           ),
//                   ],
//                 ),
//               );
//             }

//             return const SizedBox();
//           },
//         ),
//       ),
//     );
//   }
// }
