import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/data/static_datasources/us_states.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer_selector.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/contact_information/presentation/models/us_state.dart';
import 'package:resident_app/features/contact_information/presentation/widgets/contact_information_edit_mode.dart';
import 'package:resident_app/features/contact_information/presentation/widgets/contact_information_read_mode.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class ContactInformationView extends StatefulWidget {
  const ContactInformationView({super.key});

  @override
  State<ContactInformationView> createState() => _ContactInformationViewState();
}

class _ContactInformationViewState extends State<ContactInformationView> {
  //
  // Keys
  //
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  //
  // Notifiers
  //
  late ValueNotifier<bool> isEditSelectedNotifier;
  late ValueNotifier<USState?> selectedStateNotifier;

  //
  // Bloc
  //
  late ContactInformationEditBloc _contactInformationEditBloc;
  late SiteBloc _siteBloc;

  //
  // Localizations
  //
  late AppLocalizations _localizations;

  //
  // Others
  //
  late List<USState> _usStates;
  late bool contactIsEditable;

  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  // TODO: Find a good place to get user data
  final userBloc = locator<UserBloc>();

  @override
  void initState() {
    super.initState();

    _siteBloc = locator<SiteBloc>();

    selectedStateNotifier = ValueNotifier<USState?>(null);
    isEditSelectedNotifier = ValueNotifier(
      false,
    );
    _contactInformationEditBloc = locator<ContactInformationEditBloc>();

    _localizations = locator<MaLocalizations>().I;
    _usStates =
        List<USState>.from(usStatesData.map((st) => USState.fromJson(st)))
            .toList();
    contactIsEditable =
        _siteBloc.state.selectedSite.propertySettings.contactSync;

    final foundStates = _usStates
        .where((st) =>
            st.value == _siteBloc.state.selectedSite.resident.billingState)
        .toList();
    selectedStateNotifier = ValueNotifier<USState?>(
      foundStates.isNotEmpty ? foundStates.first : null,
    );

    _contactInformationEditBloc.add(
      ContactInformationEditEvent.initFromSite(
        site: _siteBloc.state.selectedSite,
        state: foundStates.isEmpty
            ? USState(name: "", value: "")
            : foundStates.first,
      ),
    );
  }

  @override
  void dispose() {
    isEditSelectedNotifier.dispose();
    super.dispose();
  }

  void _getUser() {
    userBloc.add(UserEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return ValueListenableBuilder<bool>(
      valueListenable: isEditSelectedNotifier,
      builder: (context, isContactSync, child) {
        return Scaffold(
          key: scaffoldKey,
          drawer: ValueListenableBuilder<bool>(
            valueListenable: _openSiteSelectorDrawer,
            builder: (context, openSiteSelector, child) {
              if (openSiteSelector) {
                return SiteSelectorDrawer(
                  onClosedDrawer: () => _openSiteSelectorDrawer.value = false,
                );
              }

              return MADrawer();
            },
          ),
          endDrawer: ValueListenableBuilder<USState?>(
            valueListenable: selectedStateNotifier,
            builder: (context, selectedState, child) {
              return MADrawerSelector<USState>(
                onClosedDrawer: (USState? state) {
                  if (state != null) {
                    _contactInformationEditBloc.add(
                      ContactInformationEditEvent.setUSState(
                        state,
                      ),
                    );
                  }

                  selectedStateNotifier.value = state;
                },
                title: _localizations.statesTitle,
                items: _usStates
                    .map(
                      (st) => MADrawerSelectorInputItem<USState>(
                        value: st,
                        label: st.name,
                      ),
                    )
                    .toList(),
                value: selectedState,
              );
            },
          ),
          backgroundColor: colorPalette.surfaceContainerLowest,
          appBar: MAAppBar(
            iconTheme: IconThemeData(
              color: colorPalette.appBarTextIcon,
            ),
            maAppBarType: MAAppBarType.blue,
            bottom: const MABottomAppBar(),
            leadingWidth: isContactSync ? width / 4 : 50,
            leading: isContactSync
                ? Container(
                    padding: const EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        isEditSelectedNotifier.value =
                            !isEditSelectedNotifier.value;
                        _contactInformationEditBloc.add(
                          ContactInformationEditEvent.initFromSite(
                            site: _siteBloc.state.selectedSite,
                            state: USState(name: "", value: ""),
                          ),
                        );
                      },
                      child: Text(
                        _localizations.cancelButton,
                        style: textTheme.labelLarge!.copyWith(
                          color: colorPalette.appBarTextIcon,
                        ),
                      ),
                    ),
                  )
                : null,
            title: AutoSizeText(
              _localizations.contactInformationLabel,
              style: textTheme.titleSmall!.copyWith(
                color: colorPalette.appBarTextIcon,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              minFontSize: 17,
              maxFontSize: 17,
            ),
            actions: [
              contactIsEditable
                  ? Container(
                      width: isContactSync ? width / 5 : 90,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(
                        right: 16,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          if (isContactSync) {
                            _contactInformationEditBloc.add(
                              const ContactInformationEditEvent
                                  .validateAllForm(),
                            );
                          } else {
                            isEditSelectedNotifier.value =
                                !isEditSelectedNotifier.value;
                            late List<USState> usStates;
                            usStates = List<USState>.from(usStatesData
                                .map((st) => USState.fromJson(st))).toList();
                            final foundStates = usStates
                                .where((st) =>
                                    st.value ==
                                    _siteBloc.state.selectedSite.resident
                                        .billingState)
                                .toList();

                            _contactInformationEditBloc.add(
                              ContactInformationEditEvent.initFromSite(
                                site: _siteBloc.state.selectedSite,
                                state: foundStates.isEmpty
                                    ? USState(name: "", value: "")
                                    : foundStates.first,
                              ),
                            );
                          }
                        },
                        child: Text(
                          isContactSync
                              ? _localizations.saveButton
                              : _localizations.editButton,
                          style: textTheme.labelLarge!.copyWith(
                            color: colorPalette.appBarTextIcon,
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
          body: isContactSync
              ? ContactInformationEditMode(
                  scaffoldKey: scaffoldKey,
                  contactInformationEditBloc: _contactInformationEditBloc,
                  selectedStateNotifier: selectedStateNotifier,
                  onSuccessUpdate: () {
                    isEditSelectedNotifier.value = false;
                  },
                )
              : ContactInformationReadMode(
                  openSiteSelectorDrawerNotifier: _openSiteSelectorDrawer,
                  scaffoldKey: scaffoldKey,
                ),
        );
      },
    );
  }
}
