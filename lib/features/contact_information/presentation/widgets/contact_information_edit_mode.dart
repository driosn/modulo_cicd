import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_checkbox.dart';
import 'package:resident_app/core/presentation/widgets/loading_wrapper.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/contact_information/presentation/models/us_state.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class ContactInformationEditMode extends StatefulWidget {
  const ContactInformationEditMode({
    super.key,
    required ContactInformationEditBloc contactInformationEditBloc,
    required this.selectedStateNotifier,
    required this.scaffoldKey,
    this.onSuccessUpdate,
  }) : _contactInformationEditBloc = contactInformationEditBloc;

  final GlobalKey<ScaffoldState> scaffoldKey;
  final ContactInformationEditBloc _contactInformationEditBloc;
  final ValueNotifier<USState?> selectedStateNotifier;
  final VoidCallback? onSuccessUpdate;

  @override
  State<ContactInformationEditMode> createState() =>
      _ContactInformationEditModeState();
}

class _ContactInformationEditModeState
    extends State<ContactInformationEditMode> {
  //
  // Controllers
  //
  late ScrollController _scrollController;
  late TextEditingController _emailController;
  late TextEditingController _cellPhoneController;
  late TextEditingController _homePhoneController;
  //
  // Notifiers
  //
  late ValueNotifier<double> _topBackgrondPositionNotifier;
  late ValueNotifier<USState?> _selectedStateNotifier;
  //
  // Others
  //
  late SiteBloc _siteBloc;
  late UserBloc _userBloc;
  //
  // Bloc
  //
  late ContactInformationEditBloc _contactInformationEditBloc;
  //
  // Localizations
  //
  late AppLocalizations _localizations;

  @override
  void initState() {
    _siteBloc = locator<SiteBloc>();
    _userBloc = locator<UserBloc>();

    _localizations = locator<MaLocalizations>().I;

    _contactInformationEditBloc = widget._contactInformationEditBloc;

    _scrollController = ScrollController();
    _scrollController.addListener(_onScrollListener);
    _emailController = TextEditingController();
    _cellPhoneController = TextEditingController();
    _homePhoneController = TextEditingController();

    _selectedStateNotifier = widget.selectedStateNotifier;

    _topBackgrondPositionNotifier = ValueNotifier<double>(0.0);

    final useBillingAddress =
        _siteBloc.state.selectedSite.resident.useBillingAddress;

    _contactInformationEditBloc = widget._contactInformationEditBloc;
    _contactInformationEditBloc
        .add(ContactInformationEditEvent.setUseSiteAddress(!useBillingAddress));

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  void _onScrollListener() {
    _topBackgrondPositionNotifier.value = _scrollController.offset * -1.0;
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    return BlocProvider.value(
      value: _contactInformationEditBloc,
      child: BlocBuilder<SiteBloc, SiteState>(
          bloc: _siteBloc,
          builder: (context, state) {
            final resident = _siteBloc.state.selectedSite.resident;
            return BlocConsumer<ContactInformationEditBloc,
                ContactInformationEditState>(
              listener: (context, state) {
                if (state.isAllFormValid) {
                  _contactInformationEditBloc.add(
                    ContactInformationEditEvent.update(
                      residentId: resident.residentId,
                    ),
                  );
                }

                state.updateStatus.whenOrNull(
                  success: () {
                    widget.onSuccessUpdate?.call();
                    _siteBloc.add(
                      SiteEvent.setContactInformation(
                        residentEmail:
                            _contactInformationEditBloc.state.email.value,
                        cellPhone: _contactInformationEditBloc
                            .state.cellPhone.value
                            .removePhoneFormat(),
                        homePhone: _contactInformationEditBloc
                            .state.homePhone.value
                            .removePhoneFormat(),
                        useBillingAddress:
                            !_contactInformationEditBloc.state.useSiteAddress,
                        billingAddress:
                            _contactInformationEditBloc.state.address.value,
                        billingCity:
                            _contactInformationEditBloc.state.city.value,
                        billingState:
                            _contactInformationEditBloc.state.usState!.value,
                        billingPostalCode:
                            _contactInformationEditBloc.state.postalCode.value,
                      ),
                    );
                    if (_siteBloc.state.selectedSite.resident.residentId ==
                        _userBloc.state.user.primarySite.resident.residentId) {
                      _userBloc.add(
                        UserEvent.setContactInformation(
                          residentEmail:
                              _contactInformationEditBloc.state.email.value,
                          cellPhone: _contactInformationEditBloc
                              .state.cellPhone.value
                              .removePhoneFormat(),
                          homePhone: _contactInformationEditBloc
                              .state.homePhone.value
                              .removePhoneFormat(),
                          useBillingAddress:
                              !_contactInformationEditBloc.state.useSiteAddress,
                          billingAddress:
                              _contactInformationEditBloc.state.address.value,
                          billingCity:
                              _contactInformationEditBloc.state.city.value,
                          billingState:
                              _contactInformationEditBloc.state.usState!.value,
                          billingPostalCode: _contactInformationEditBloc
                              .state.postalCode.value,
                        ),
                      );
                    }

                    _contactInformationEditBloc.add(
                      ContactInformationEditEvent.setUpdateStatus(
                        ContactInformationUpdateStatus.initial(),
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      MASnackBar.success(
                        message: _localizations.changesSavedSuccessfully,
                      ),
                    );
                  },
                  failure: (errorMessage) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      MASnackBar.failure(
                        message: 'Unexpected Exception',
                      ),
                    );
                    _contactInformationEditBloc.add(
                      ContactInformationEditEvent.setUpdateStatus(
                        ContactInformationUpdateStatus.initial(),
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return LoadingWrapper(
                  isLoading: state.updateStatus.whenOrNull(
                        updating: () => true,
                      ) ??
                      false,
                  child: Container(
                    color: colorPalette.surfaceContainerLowest,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: RelationalPadding(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MASpacing.l(),
                            BlocBuilder<ContactInformationEditBloc,
                                ContactInformationEditState>(
                              buildWhen: (previousState, currentState) {
                                return previousState.emailErrorMessage !=
                                    currentState.emailErrorMessage;
                              },
                              builder: (context, state) {
                                return MATextFormField.email(
                                  initialValue: state.email.value,
                                  controller: _emailController,
                                  label: _localizations.emailField,
                                  onChanged: (value) =>
                                      _contactInformationEditBloc.add(
                                    ContactInformationEditEvent.setEmail(value),
                                  ),
                                  onFocusExited: () =>
                                      _contactInformationEditBloc.add(
                                    const ContactInformationEditEvent
                                        .validateEmail(),
                                  ),
                                  errorText: state.emailErrorMessage,
                                  hasError: state.emailErrorMessage != null,
                                );
                              },
                            ),
                            MASpacing.l(),
                            BlocBuilder<ContactInformationEditBloc,
                                ContactInformationEditState>(
                              buildWhen: (previousState, currentState) {
                                return previousState.cellPhoneErrorMessage !=
                                    currentState.cellPhoneErrorMessage;
                              },
                              builder: (context, state) {
                                return MATextFormField.phoneNumber(
                                  initialValue:
                                      resident.cellPhone.phoneFormatter(),
                                  controller: _cellPhoneController,
                                  onChanged: (value) =>
                                      _contactInformationEditBloc.add(
                                    ContactInformationEditEvent.setCellPhone(
                                        value),
                                  ),
                                  onFocusExited: () =>
                                      _contactInformationEditBloc.add(
                                    const ContactInformationEditEvent
                                        .validateCellPhone(),
                                  ),
                                  hintText: _localizations.phoneNumberHint,
                                  label: _localizations.cellPhoneField,
                                  errorText: state.cellPhoneErrorMessage,
                                  hasError: state.cellPhoneErrorMessage != null,
                                );
                              },
                            ),
                            MASpacing.l(),
                            BlocBuilder<ContactInformationEditBloc,
                                ContactInformationEditState>(
                              buildWhen: (previousState, currentState) {
                                return previousState.homePhoneErrorMessage !=
                                    currentState.homePhoneErrorMessage;
                              },
                              builder: (context, state) {
                                return MATextFormField.phoneNumber(
                                  initialValue:
                                      resident.homePhone.phoneFormatter(),
                                  controller: _homePhoneController,
                                  onChanged: (value) =>
                                      _contactInformationEditBloc.add(
                                    ContactInformationEditEvent.setHomePhone(
                                        value),
                                  ),
                                  onFocusExited: () =>
                                      _contactInformationEditBloc.add(
                                    const ContactInformationEditEvent
                                        .validateHomePhone(),
                                  ),
                                  label: _localizations.homePhoneField,
                                  hintText: _localizations.phoneNumberHint,
                                  errorText: state.homePhoneErrorMessage,
                                  hasError: state.homePhoneErrorMessage != null,
                                );
                              },
                            ),
                            MASpacing.xl(),
                            Text(
                              _localizations.mailingAddressField,
                              style: theme.textTheme.titleSmall,
                            ),
                            MASpacing.xl(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                BlocBuilder<ContactInformationEditBloc,
                                    ContactInformationEditState>(
                                  builder: (context, state) {
                                    return SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: MACheckbox(
                                          isOn: state.useSiteAddress,
                                          onChanged: (value) {
                                            _selectedStateNotifier.value = null;
                                            _contactInformationEditBloc.add(
                                              ContactInformationEditEvent
                                                  .setUseSiteAddress(
                                                value!,
                                              ),
                                            );
                                            _contactInformationEditBloc.add(
                                              ContactInformationEditEvent
                                                  .cleanSiteAddress(),
                                            );
                                          }),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Flexible(
                                  child: Text(
                                    _localizations.useSiteAddressLabel,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            MASpacing.xl(),
                            BlocBuilder<ContactInformationEditBloc,
                                ContactInformationEditState>(
                              bloc: _contactInformationEditBloc,
                              builder: (context, state) {
                                return !_contactInformationEditBloc
                                        .state.useSiteAddress
                                    ? Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          MATextFormField(
                                            initialValue:
                                                _contactInformationEditBloc
                                                    .state.address.value,
                                            controller: TextEditingController(
                                              text: state.address.value,
                                            ),
                                            label: _localizations.addressField,
                                            hintText:
                                                _localizations.siteAddressHint,
                                            maxLength: 50,
                                            onChanged: (value) =>
                                                _contactInformationEditBloc.add(
                                              ContactInformationEditEvent
                                                  .setAddress(value),
                                            ),
                                            onFocusExited: () =>
                                                _contactInformationEditBloc.add(
                                              const ContactInformationEditEvent
                                                  .validateAddress(),
                                            ),
                                            errorText:
                                                state.addressErrorMessage,
                                            hasError:
                                                state.addressErrorMessage !=
                                                    null,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          MATextFormField(
                                            initialValue: state.city.value,
                                            label: _localizations.cityField,
                                            hintText: _localizations.cityField,
                                            maxLength: 50,
                                            controller: TextEditingController(
                                              text: state.city.value,
                                            ),
                                            onChanged: (value) =>
                                                _contactInformationEditBloc.add(
                                              ContactInformationEditEvent
                                                  .setCity(value),
                                            ),
                                            onFocusExited: () =>
                                                _contactInformationEditBloc.add(
                                              const ContactInformationEditEvent
                                                  .validateCity(),
                                            ),
                                            errorText: state.cityErrorMessage,
                                            hasError:
                                                state.cityErrorMessage != null,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          InkWell(
                                            child: ValueListenableBuilder<
                                                USState?>(
                                              valueListenable:
                                                  _selectedStateNotifier,
                                              builder: (context, selectedState,
                                                  child) {
                                                return IgnorePointer(
                                                  key: UniqueKey(),
                                                  child: MATextFormField(
                                                    initialValue:
                                                        // selectedState?.name,
                                                        state.usState?.name,
                                                    label: 'State',
                                                    hintText: 'State',
                                                    readOnly: true,
                                                    hasError: state
                                                            .usStateErrorMessage !=
                                                        null,
                                                    errorText: state
                                                        .usStateErrorMessage,
                                                  ),
                                                );
                                              },
                                            ),
                                            onTap: () {
                                              widget.scaffoldKey.currentState
                                                  ?.openEndDrawer();
                                            },
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          MATextFormField(
                                            initialValue:
                                                _contactInformationEditBloc
                                                    .state.postalCode.value,
                                            label:
                                                _localizations.postalCodeField,
                                            hintText:
                                                '${_localizations.postalCodeField} (00000)',
                                            maxLength: 5,
                                            controller: TextEditingController(
                                              text: state.postalCode.value,
                                            ),
                                            onChanged: (value) =>
                                                _contactInformationEditBloc.add(
                                              ContactInformationEditEvent
                                                  .setPostalCode(value),
                                            ),
                                            onFocusExited: () =>
                                                _contactInformationEditBloc.add(
                                              const ContactInformationEditEvent
                                                  .validatePostalCode(),
                                            ),
                                            errorText:
                                                state.postalCodeErrorMessage,
                                            hasError:
                                                state.postalCodeErrorMessage !=
                                                    null,
                                          ),
                                        ],
                                      )
                                    : SizedBox.shrink();
                              },
                            ),
                            MASpacing.s(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
