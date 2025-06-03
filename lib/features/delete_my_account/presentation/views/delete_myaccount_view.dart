import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import '../../../../core/application/bloc/user_preferences/user_preferences_bloc.dart';
import '../../../../core/presentation/widgets/buttons/ma_elevated_button.dart';
import '../../../../core/presentation/widgets/dialogs/ma_center_dialog_body.dart';
import '../../../../core/presentation/widgets/dialogs/ma_dialog.dart';
import '../../../../core/presentation/widgets/drawers/ma_drawer.dart';
import '../../../../core/presentation/widgets/ma_circular_progress_indicator.dart';
import '../../../../core/presentation/widgets/ma_divider.dart';
import '../../../../core/presentation/widgets/spacing/ma_spacing.dart';
import '../../../../core/presentation/widgets/vertical_rhythm.dart';
import '../../../auth/routes.dart';
import '../../application/bloc/delete_account_bloc.dart';

class DeleteMyAccountView extends StatefulWidget {
  const DeleteMyAccountView({super.key});

  @override
  State<DeleteMyAccountView> createState() => _DeleteMyAccountViewState();
}

class _DeleteMyAccountViewState extends State<DeleteMyAccountView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late final DeleteAccountBloc _deleteAccountBloc;
  late final UserBloc _userBloc;
  late MAError maError;
  @override
  void initState() {
    super.initState();
    _deleteAccountBloc = locator<DeleteAccountBloc>();
    _userBloc = locator<UserBloc>();
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  void _deleteAccount() {
    final residentUserId = _userBloc.state.user.residentUserId;
    _deleteAccountBloc.add(DeleteAccountEvent.delete(residentId: residentUserId));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = AppLocalizations.of(context)!;
    final colorPalette = locator<ColorPalette>();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(items: MADrawer.defaultItems),
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.deleteAccount,
          style: theme.textTheme.titleSmall?.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: BlocConsumer<DeleteAccountBloc, DeleteAccountState>(
        bloc: _deleteAccountBloc,
        listener: (context, state) {
          state.status.mapOrNull(
            success: (_) => _showSuccessDialog(context, localizations),
            failure: (failure) => _showErrorDialog(context, localizations, maError.message),
          );
        },
        builder: (context, state) {
          if (state.status == DeleteAccountStatus.loading) {
            Future.delayed(Duration(seconds: 30), () {
              if (mounted && state.status == DeleteAccountStatus.loading) {
                _showErrorDialog(context, localizations, localizations.accountNotDeleted);
              }
            });
          }

          return state.status.map(
            initial: (_) => _buildContent(context, theme, localizations),
            loading: (_) => const Center(child: MACircularProgressIndicator()),
            failure: (failure) => Center(child: Text(maError.message)),
            success: (_) => _buildContent(context, theme, localizations),
          );
        },
      ),
    );
  }
  Widget _buildContent(BuildContext context, ThemeData theme, AppLocalizations localizations) {
    return Column(
      children: [
        MADivider(height: 5, color: locator<ColorPalette>().appBarAccent),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: VerticalRhythm(
              topCrossAxisAlignment: CrossAxisAlignment.start,
              topChildren: [
                MASpacing.xxl(),
                Text(
                  localizations.deleteAccountWarning,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
                MASpacing.xxl(),
              ],
              bottomChildren: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () => _showSignOutDialog(context, localizations),
                      style: TextButton.styleFrom(
                        foregroundColor: locator<ColorPalette>().appBarBg,
                      ),
                      child: Text(localizations.signOutInstead.toUpperCase()),
                    ),
                    const SizedBox(height: 16),
                    MAElevatedButton.secondary(
                      onPressed: () => _showDeleteConfirmationDialog(context),
                      child: Text(localizations.deleteAccount.toUpperCase()),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                MASpacing.xxl(),
                MASpacing.s(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final colorPalette = locator<ColorPalette>();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            localizations.deleteAccount,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: colorPalette.buttonSegmentedSelectedLabel,
                decoration: TextDecoration.none
            ),
          ),
          content: Text(localizations.warrningTextDelete),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                foregroundColor: colorPalette.appBarBg,
                // backgroundColor: colorPalette.buttonPrimaryLabel
              ),
              child: Text(localizations.cancel.toUpperCase()),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _deleteAccount();
              },
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: colorPalette.warningWarning
              ),
              child: Text(localizations.deleteAccount.toUpperCase()),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(BuildContext context, AppLocalizations localizations) {
    final colorPalette = locator<ColorPalette>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(localizations.accountDeleted,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: colorPalette.buttonSegmentedSelectedLabel,
            decoration: TextDecoration.none
        ),
        ),

        content: Text(localizations.accountDeletedSuccessfully,style: TextStyle(
            fontSize: 16.0,
            color: colorPalette.buttonSegmentedSelectedLabel,
            decoration: TextDecoration.none
        ),),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: colorPalette.primaryBase
            ),
            onPressed: () => context.goNamed(AuthRoutes.signIn.name!),
            child: Text(localizations.ok.toUpperCase()),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(BuildContext context, AppLocalizations localizations, String? message) {
    final colorPalette = locator<ColorPalette>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(localizations.accountNotDeleted, style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: colorPalette.buttonSegmentedSelectedLabel,
            decoration: TextDecoration.none
        ),
        ),
        content: Text(localizations.accountNotDeletedSuccessfully,style: TextStyle(
            fontSize: 16.0,
            color: colorPalette.buttonSegmentedSelectedLabel,
            decoration: TextDecoration.none
        ),),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: colorPalette.primaryBase
            ),
            onPressed: () => Navigator.pop(context),
            child: Text(localizations.ok.toUpperCase()),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context, AppLocalizations localizations) {
    context.showMACenterDialog(
      maDialogBody: MACenterDialogBody(
        title: localizations.logOut,
        text: localizations.logOutDialog,
      ),
      actions: [
        MADialogAction(
          label: localizations.logOut.toUpperCase(),
          onPressed: () {
            context.read<UserPreferencesBloc>().add(const UserPreferencesEvent.restart());
            locator<UserBloc>().add(const UserEvent.restart());
            context.goNamed(AuthRoutes.signOut.name!);
          },
          style: MADialogActionStyle.elevated,
        ),
        MADialogAction(
          label: localizations.cancel.toUpperCase(),
          onPressed: () => context.pop(),
          style: MADialogActionStyle.text,
        ),
      ],
    );
  }
}

