import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/contact_information/presentation/widgets/informative_block.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class EditEmailView extends StatelessWidget {
  EditEmailView({super.key});

  final AppLocalizations _localizations = locator<MaLocalizations>().I;

  final userBloc = locator<UserBloc>();

  final ContactInformationEditBloc contactInformationEditBloc =
      locator<ContactInformationEditBloc>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colorPalette = locator<ColorPalette>();
    final emailController = TextEditingController();
    final textTheme = Theme.of(context).textTheme;
    return BlocListener<ContactInformationEditBloc,
        ContactInformationEditState>(
      bloc: contactInformationEditBloc,
      listener: (context, state) {
        if (state.updateStatus == ContactInformationUpdateStatus.updating()) {
          if (state.emailErrorMessage == null) {
            contactInformationEditBloc.add(
              ContactInformationEditEvent.updateEmail(
                newEmail: state.email.value,
                residentUserId: userBloc.state.user.residentUserId,
              ),
            );
            Navigator.pop(context);
          } else {
            contactInformationEditBloc.add(
              ContactInformationEditEvent.setUpdateStatus(
                ContactInformationUpdateStatus.initial(),
              ),
            );
          }
        }
      },
      child:
          BlocBuilder<ContactInformationEditBloc, ContactInformationEditState>(
        bloc: contactInformationEditBloc,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: colorPalette.surfaceContainerLowest,
            appBar: MAAppBar(
              iconTheme: IconThemeData(
                color: colorPalette.appBarTextIcon,
              ),
              maAppBarType: MAAppBarType.blue,
              bottom: const MABottomAppBar(),
              leadingWidth: 120,
              leading: SizedBox(
                width: width / 3,
                child: MATextButton(
                  isPadding: false,
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    _localizations.cancelButton,
                    style: textTheme.labelLarge!.copyWith(
                      color: colorPalette.appBarTextIcon,
                    ),
                  ),
                ),
              ),
              title: AutoSizeText(
                _localizations.editEmail,
                style: textTheme.titleSmall!.copyWith(
                  color: colorPalette.appBarTextIcon,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                minFontSize: 17,
                maxFontSize: 17,
                overflowReplacement: const SizedBox.shrink(),
              ),
              actions: [
                SizedBox(
                  width: 90,
                  child: MATextButton(
                    isPadding: false,
                    onPressed: () {
                      contactInformationEditBloc.add(
                        const ContactInformationEditEvent.validateEmail(),
                      );
                      contactInformationEditBloc.add(
                        ContactInformationEditEvent.setUpdateStatus(
                          ContactInformationUpdateStatus.updating(),
                        ),
                      );
                    },
                    child: Text(
                      _localizations.saveButton,
                      style: textTheme.labelLarge!.copyWith(
                        color: colorPalette.appBarTextIcon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                RelationalPadding(
                  addVerticalPadding: true,
                  child: BlocBuilder<ContactInformationEditBloc,
                      ContactInformationEditState>(
                    bloc: contactInformationEditBloc,
                    builder: (context, state) {
                      return MATextFormField.username(
                        initialValue: userBloc.state.user.residentUserEmail,
                        controller: emailController,
                        label: _localizations.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        onChanged: (value) {
                          contactInformationEditBloc.add(
                            ContactInformationEditEvent.setDefaultEmail(value),
                          );
                        },
                        errorText: state.emailErrorMessage,
                        hasError: state.emailErrorMessage != null,
                      );
                    },
                  ),
                ),
                MASpacing.xxl(),
                MASpacing.s(),
                InformativeBlock(),
              ],
            ),
          );
        },
      ),
    );
  }
}
