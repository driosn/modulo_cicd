import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/sign_in_dialog/sign_in_dialog_bloc.dart';
import 'package:resident_app/core/data/static_datasources/us_states.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_and_list_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_and_option_list_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_and_sign_in_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer_selector.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/drawers/cashpay_no_payment_drawer.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/drawers/cashpay_payment_due_drawer.dart';
import 'package:resident_app/features/contact_information/presentation/models/contact_information_models.dart';
import 'package:resident_app/features/demo/application/bloc/demo_bloc.dart';
import 'package:resident_app/features/demo/presentation/views/accordion/demo_accordion_example.dart';
import 'package:resident_app/features/demo/presentation/widgets/demo_component_scaffold.dart';
import 'package:resident_app/features/demo/presentation/widgets/demo_components_section.dart';
import 'package:resident_app/features/summary/presentation/widgets/home_card.dart';
import 'package:resident_app/features/user/user_feature.dart';

class DemoComponentsView extends StatefulWidget {
  const DemoComponentsView({super.key});

  @override
  State<DemoComponentsView> createState() => _DemoComponentsViewState();
}

class _DemoComponentsViewState extends State<DemoComponentsView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _demoBloc = locator<DemoBloc>();
  final _userBloc = locator<UserBloc>();
  final _signInDialogBloc = locator<SignInDialogBloc>();

  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  final ValueNotifier<Widget> _drawerToOpenNotifier =
      ValueNotifier<Widget>(MADrawer());

  @override
  void dispose() {
    _drawerToOpenNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: ValueListenableBuilder<Widget>(
        valueListenable: _drawerToOpenNotifier,
        builder: (context, drawerToOpen, child) {
          return drawerToOpen;
        },
      ),
      endDrawerEnableOpenDragGesture: false,
      endDrawer: MADrawerSelector<USState>(
        title: 'STATES',
        items:
            List<USState>.from(usStatesData.map((st) => USState.fromJson(st)))
                .toList()
                .map(
                  (st) => MADrawerSelectorInputItem<USState>(
                    value: st,
                    label: st.name,
                  ),
                )
                .toList(),
        onClosedDrawer: (USState? value) {},
        value: null,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
        title: Text(
          'Components',
          style: textTheme.bodyMedium!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
        actions: const <Widget>[
          SizedBox(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _cards(),
            _oneTimePassword(),
            _dropdowns(),
            _textFields(),
            _buttons(),
            _snackbars(context),
            _siteSelector(context),
            _dialogs(context),
            _drawers(context),
            _accordion(context),
          ],
        ),
      ),
    );
  }

  Widget _cards() {
    return DemoComponentsSection(
      sectionName: 'Cards',
      components: [
        DemoComponentScaffold(
          label: 'Home - Payments',
          child: HomeCard.payments(
            site: _userBloc.state.user.primarySite,
            title: _localizations.paymentCardTitle,
            lastPayment: 1500,
            rentBalance: 1500,
            borderColor: _colorPalette.cardBorder,
          ),
        ),
        DemoComponentScaffold(
          label: 'Home - Payments (Without last payment)',
          child: HomeCard.payments(
            site: _userBloc.state.user.primarySite,
            title: _localizations.paymentCardTitle,
            rentBalance: 1500,
            lastPayment: null,
            borderColor: _colorPalette.cardBorder,
          ),
        ),
        DemoComponentScaffold(
          label: 'Home - Community',
          child: HomeCard.community(
            site: _userBloc.state.user.primarySite,
            title: _localizations.communityCardTitle,
            borderColor: _colorPalette.cardBorder,
          ),
        ),
        DemoComponentScaffold(
          label: 'Home - Announcements',
          child: HomeCard.announcements(
            site: _userBloc.state.user.primarySite,
            title: _localizations.announcementsCardTitle,
            announcementBody: 'Body',
            announcementSubject: 'Subject',
            announcementNewCount: 2,
            borderColor: _colorPalette.cardBorder,
          ),
        ),
      ],
    );
  }

  Widget _oneTimePassword() {
    return DemoComponentsSection(
      sectionName: 'OTP Fields',
      components: [
        DemoComponentScaffold(
          label: 'One Time Password - (Without Error)',
          useRelationalPadding: false,
          child: MAOneTimeInput(
            onLastDigitEntered: (fullCode) {
              debugPrint(fullCode);
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'One Time Password - (With Error)',
          useRelationalPadding: false,
          child: MAOneTimeInput(
            onLastDigitEntered: (fullCode) {
              debugPrint(fullCode);
            },
            errorMessage: 'Error message',
          ),
        ),
      ],
    );
  }

  Widget _dropdowns() {
    return DemoComponentsSection(
      sectionName: 'Dropdowns',
      components: [
        DemoComponentScaffold(
          label: 'Dropdown - Selector (Basic)',
          child: MASelectorInputField<String>(
            labelText: "Input field label",
            hintText: "Item A",
            initialValue: "Item A",
            menuItems: [
              "Item A",
              "Item B",
              "Item C",
            ]
                .map(
                  (item) => MASelectorInputItem<String>(
                    value: item,
                    label: item,
                  ),
                )
                .toList(),
            onSelectedItem: (String value) {
              debugPrint(value);
            },
          ),
        ),
      ],
    );
  }

  Widget _textFields() {
    return DemoComponentsSection(
      sectionName: 'TextFields',
      components: [
        DemoComponentScaffold(
          label: 'TextField - Email',
          child: BlocBuilder<DemoBloc, DemoState>(
            bloc: _demoBloc,
            buildWhen: (previousState, currentState) {
              return previousState.emailErrorMessage !=
                  currentState.emailErrorMessage;
            },
            builder: (context, state) {
              return MATextFormField.email(
                controller: _emailController,
                onChanged: (email) => _demoBloc.add(
                  DemoEvent.setEmail(email),
                ),
                onFocusExited: () => _demoBloc.add(
                  const DemoEvent.validateEmail(),
                ),
                errorText: state.emailErrorMessage,
                hasError: state.emailErrorMessage != null,
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'TextField - Password',
          child: BlocBuilder<DemoBloc, DemoState>(
            bloc: _demoBloc,
            buildWhen: (previousState, currentState) {
              return previousState.passwordErrorMessage !=
                  currentState.passwordErrorMessage;
            },
            builder: (context, state) {
              return MATextFormField.password(
                controller: _passwordController,
                onChanged: (email) => _demoBloc.add(
                  DemoEvent.setPassword(email),
                ),
                onFocusExited: () => _demoBloc.add(
                  const DemoEvent.validatePassword(),
                ),
                errorText: state.passwordErrorMessage,
                hasError: state.passwordErrorMessage != null,
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'TextField - Phone Number',
          child: BlocBuilder<DemoBloc, DemoState>(
            bloc: _demoBloc,
            buildWhen: (previousState, currentState) {
              return previousState.phoneErrorMessage !=
                  currentState.phoneErrorMessage;
            },
            builder: (context, state) {
              return MATextFormField.phoneNumber(
                controller: _phoneController,
                onChanged: (email) => _demoBloc.add(
                  DemoEvent.setPhone(email),
                ),
                onFocusExited: () => _demoBloc.add(
                  const DemoEvent.validatePhone(),
                ),
                errorText: state.phoneErrorMessage,
                hasError: state.phoneErrorMessage != null,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buttons() {
    return DemoComponentsSection(
      sectionName: 'Buttons',
      components: [
        DemoComponentScaffold(
          label: 'Button - Primary Normal',
          child: MAElevatedButton.primary(
            text: "PRIMARY NORMAL",
            onPressed: () {},
          ),
        ),
        DemoComponentScaffold(
          label: 'Button - Secondary Normal',
          child: MAElevatedButton.secondary(
            text: "SECONDARY NORMAL",
            onPressed: () {},
          ),
        ),
        DemoComponentScaffold(
          label: 'Button - Primary Disabled',
          child: MAElevatedButton.primary(
            text: "PRIMARY DISABLED",
          ),
        ),
        DemoComponentScaffold(
          label: 'Button - Secondary Disabled',
          child: MAElevatedButton.secondary(
            text: "SECONDARY DISABLED",
          ),
        ),
        const DemoComponentScaffold(
          label: 'IconButton',
          child: MAIconButton(
            icon: Icon(
              Icons.abc_outlined,
            ),
          ),
        ),
        const DemoComponentScaffold(
          label: 'Facebook SocialButton',
          child: MAIconButton(
            icon: Icon(
              Icons.abc_outlined,
            ),
          ),
        ),
        DemoComponentScaffold(
          label: 'Google SocialButton',
          child: MAElevatedButton.social(
            child: const Wrap(children: [
              //ImageIcon(AssetImage("assets/google.png")),
              Image(
                  width: 24,
                  height: 24,
                  image: AssetImage("assets/google.png")),
              SizedBox(
                width: 5,
              ),
              Text("Google"),
            ]),
            onPressed: () async {},
          ),
        ),
      ],
    );
  }

  Widget _snackbars(BuildContext context) {
    return DemoComponentsSection(
      sectionName: 'Snackbars',
      components: [
        DemoComponentScaffold(
          label: 'Informative',
          child: MAElevatedButton.primary(
            text: "Informative",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Single - line snackbar",
                showDismiss: false,
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Action',
          child: MAElevatedButton.secondary(
            text: "Action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Single action right element",
                actionLabel: "Action",
                snackBarAction: () {},
                showDismiss: false,
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Two Lines Action',
          child: MAElevatedButton.primary(
            text: "Two Lines Action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Two-line snackbar with action & righ element",
                actionLabel: "Action",
                snackBarAction: () {},
                showDismiss: false,
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Two Lines Longer Action',
          child: MAElevatedButton.secondary(
            text: "Two Lines Longer Action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Two-line snackbar with action & righ element",
                actionLabel: "Longer Action",
                snackBarAction: () {},
                showDismiss: false,
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Informative dismissable',
          child: MAElevatedButton.primary(
            text: "Informative dismissable",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Single - line snackbar",
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Dismissable Action',
          child: MAElevatedButton.secondary(
            text: "Dismissable Action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Single action right element",
                actionLabel: "Action",
                snackBarAction: () {},
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Dismissable longer action',
          child: MAElevatedButton.primary(
            text: "Dismissable longer action",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar(
                message: "Two-line snackbar with action & righ element",
                actionLabel: "Longer Action",
                snackBarAction: () {},
                onSnackBarDismiss: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss),
              ));
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'Success',
          child: MAElevatedButton.secondary(
            text: "Success",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(MASnackBar.success(
                message: "Success",
                snackBarAction: () => ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.remove),
              ));
            },
          ),
        ),
      ],
    );
  }

  Widget _siteSelector(BuildContext context) {
    return const SizedBox();
    // TODO: Enable this with sites

    // return DemoComponentsSection(
    //   sectionName: 'Site selector',
    //   components: [
    //     SiteSelector<String>(
    //       selectedSite: 'a',
    //       items: const [
    //         SiteSelectorItem<String>(
    //           text: '340 Riverstone Way\nUnit 892\nSanta Rosa, CA 90012',
    //           value: 'a',
    //         ),
    //         SiteSelectorItem<String>(
    //           text:
    //               '12345 Highway of Legends Scenic\nByway\nMuleshoe, CO 71234',
    //           value: 'b',
    //         ),
    //         SiteSelectorItem<String>(
    //           text:
    //               '1200 Independence Avenue\nUnit #10987\nWashington-On-The-Brazos, TX 50002',
    //           value: 'c',
    //         ),
    //       ],
    //       onSelectedItem: (String item) {
    //         debugPrint(item);
    //         debugPrint(item);
    //       },
    //     )
    //   ],
    // );
  }

  Widget _dialogs(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final optionsDialog = [
      "Option 1",
      "Option 2",
      "Option 3",
    ];
    final items = [
      for (var option in optionsDialog)
        MADialogOptionListItem<String>(
          value: option,
          label: option,
        ),
    ];
    return DemoComponentsSection(
      sectionName: 'Dialogs',
      components: [
        DemoComponentScaffold(
          label: 'Basic Dialog',
          child: MAElevatedButton.primary(
            text: "Basic Dialog",
            onPressed: () {
              context.showMADialog(
                maDialogBody: const MABasicDialogBody(
                  title: 'Title',
                  text:
                      'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
                ),
                actions: [
                  MADialogAction(
                    label: 'ACTION 1',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                  MADialogAction(
                    label: 'ACTION 2',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.text,
                  )
                ],
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'With Hero Icon Dialog',
          child: MAElevatedButton.secondary(
            text: "With Hero Icon Dialog",
            onPressed: () {
              context.showMADialog(
                maDialogBody: MAWithHeroIconDialogBody(
                  icon: Icon(
                    Icons.mobile_friendly,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                  title: 'Title',
                  text:
                      'A dialog is a type of modal window that appears in front of app content to provide critical information.',
                ),
                actions: [
                  MADialogAction(
                    label: 'ACTION 1',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                  MADialogAction(
                    label: 'ACTION 2',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.text,
                  )
                ],
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'With Hero Icon and Sign In Dialog',
          child: MAElevatedButton.primary(
            text: "With Hero Icon and Sign In",
            onPressed: () {
              context.showMADialog(
                maDialogBody: MAWithHeroIconAndSignInDialog(
                  icon: Icon(
                    Icons.mobile_friendly,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                  title: 'Title',
                  signInDialogBloc: _signInDialogBloc,
                ),
                actions: [
                  MADialogAction(
                    label: 'ACTION 1',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                  MADialogAction(
                    label: 'Validate Form',
                    onPressed: () {
                      _signInDialogBloc
                          .add(const SignInDialogEvent.validateForm());
                    },
                    style: MADialogActionStyle.text,
                  )
                ],
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'With Hero Icon and List Dialog',
          child: MAElevatedButton.secondary(
            text: "With Hero Icon and List Dialog",
            onPressed: () {
              context.showMADialog(
                maDialogBody: MAWithHeroIconAndListDialogBody(
                  icon: Icon(
                    Icons.mobile_friendly,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                  items: [
                    MADialogListItem(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: colorPalette.surfaceContainerLow,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "A",
                            style: textTheme.titleSmall,
                          ),
                        ),
                      ),
                      label: 'List Item',
                      value: 'ListItem',
                    ),
                    MADialogListItem(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: colorPalette.surfaceContainerLow,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "A",
                            style: textTheme.titleSmall,
                          ),
                        ),
                      ),
                      label: 'List Item',
                      value: 'ListItem',
                    ),
                    MADialogListItem(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: colorPalette.surfaceContainerLow,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "A",
                          style: textTheme.titleSmall,
                        ),
                      ),
                      label: 'List Item',
                      value: 'ListItem',
                    )
                  ],
                  title: 'Title',
                  text:
                      'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
                ),
                actions: [
                  MADialogAction(
                    label: 'ACTION 1',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                  MADialogAction(
                    label: 'ACTION 2',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.text,
                  )
                ],
              );
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'With Hero Icon and Option List Dialog',
          child: MAElevatedButton.secondary(
            text: "With Hero Icon and Option List Dialog",
            onPressed: () {
              context.showMADialog(
                maDialogBody: MAWithHeroIconAndOptionListDialogBody(
                  icon: Icon(
                    Icons.mobile_friendly,
                    color: colorPalette.iconBaseTextIcon,
                  ),
                  items: items,
                  title: 'Title',
                  onChanged: (value) {},
                ),
                actions: [
                  MADialogAction(
                    label: 'ACTION 1',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                  MADialogAction(
                    label: 'ACTION 2',
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.text,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _drawers(BuildContext context) {
    return DemoComponentsSection(
      sectionName: 'Drawers',
      components: [
        DemoComponentScaffold(
          label: 'Default',
          child: MAElevatedButton.primary(
            text: "Open default drawer",
            onPressed: () {
              _drawerToOpenNotifier.value = MADrawer();
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'CashPay Default',
          child: MAElevatedButton.secondary(
            text: "Open default cashpay drawer",
            onPressed: () {
              _drawerToOpenNotifier.value = CashPayPaymentDueDrawer(
                onClosedDrawer: () {
                  _drawerToOpenNotifier.value = MADrawer();
                },
              );
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'CashPay No Payments Due',
          child: MAElevatedButton.primary(
            text: "Open cashpay no payments drawer",
            onPressed: () {
              _drawerToOpenNotifier.value = CashPayNoPaymentDrawer(
                onClosedDrawer: () {
                  _drawerToOpenNotifier.value = MADrawer();
                },
              );
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        DemoComponentScaffold(
          label: 'State Selector Drawer',
          child: MAElevatedButton.primary(
            text: "Open State Selector Drawer",
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ),
      ],
    );
  }

  Widget _accordion(BuildContext context) {
    return ListTile(
      title: Text(
        'Accordion',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const DemoAccordionExample(),
        ),
      ),
    );
  }
}
