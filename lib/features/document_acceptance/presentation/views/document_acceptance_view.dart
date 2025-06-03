import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/loading_wrapper.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_validations_bloc.dart';
import 'package:resident_app/features/auth/sign_in/presentation/widgets/sign_in_widgets.dart';
import 'package:resident_app/features/document_acceptance/application/bloc/document_acceptance_bloc.dart';
import 'package:resident_app/features/document_acceptance/presentation/widgets/dialogs/decline_documents_dialog.dart';
import 'package:resident_app/features/document_acceptance/presentation/widgets/privacy_policy_drawer.dart';
import 'package:resident_app/features/document_acceptance/presentation/widgets/terms_of_use_drawer.dart';

enum SelectedAcceptanceDocument {
  none,
  termsOfUse,
  privacyPolicy,
}

class DocumentAcceptanceView extends StatefulWidget {
  const DocumentAcceptanceView({super.key});

  @override
  State<DocumentAcceptanceView> createState() => _DocumentAcceptanceViewState();
}

class _DocumentAcceptanceViewState extends State<DocumentAcceptanceView> {
  GlobalKey key = GlobalKey();

  late DocumentAcceptanceBloc _documentAcceptanceBloc;
  final _localizations = locator<MaLocalizations>().I;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late ValueNotifier<SelectedAcceptanceDocument> _selectedDocumentNotifier;

  @override
  void initState() {
    _documentAcceptanceBloc = locator<DocumentAcceptanceBloc>();
    _selectedDocumentNotifier = ValueNotifier<SelectedAcceptanceDocument>(
      SelectedAcceptanceDocument.none,
    );
    super.initState();
  }

  @override
  void dispose() {
    _selectedDocumentNotifier.dispose();
    super.dispose();
  }

  void _openEndDrawer(SelectedAcceptanceDocument document) {
    _selectedDocumentNotifier.value = document;
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.goNamed(AuthRoutes.signIn.name!);
      },
      child: Scaffold(
        key: _scaffoldKey,
        endDrawerEnableOpenDragGesture: false,
        endDrawer: ValueListenableBuilder<SelectedAcceptanceDocument>(
          valueListenable: _selectedDocumentNotifier,
          builder: (context, selectedDocument, child) {
            if (selectedDocument == SelectedAcceptanceDocument.none) {
              return SizedBox();
            }

            if (selectedDocument == SelectedAcceptanceDocument.termsOfUse) {
              return TermsOfUseDrawer(
                parentScaffoldKey: _scaffoldKey,
              );
            }

            if (selectedDocument == SelectedAcceptanceDocument.privacyPolicy) {
              return PrivacyPolicyDrawer(
                parentScaffoldKey: _scaffoldKey,
              );
            }
            return SizedBox();
          },
        ),
        body: BlocConsumer<DocumentAcceptanceBloc, DocumentAcceptanceState>(
          bloc: _documentAcceptanceBloc,
          listener: (context, state) {
            state.whenOrNull(
              failure: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  MASnackBar.failure(
                    message: error,
                  ),
                );
              },
              success: () {
                context.goNamed(CoreRoutes.summary.name!);
              },
            );
          },
          builder: (context, state) {
            return LoadingWrapper(
              isLoading: state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              ),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<SignInValidationsBloc>(
                    create: (_) => locator<SignInValidationsBloc>(),
                  ),
                ],
                child: VerticalRhythm(
                  topChildren: const [
                    TopSignIn(),
                  ],
                  centerImage: Image.asset(
                    "assets/house_with_trees_image.png",
                    fit: BoxFit.scaleDown,
                  ),
                  centerImageHeight: 668 / 1374 * MediaQuery.of(context).size.width,
                  bottomChildren: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            _localizations.byUsingTheAppYouAgreeToThe,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _openEndDrawer(SelectedAcceptanceDocument.termsOfUse);
                                },
                                child: Text(
                                  _localizations.termsOfUse,
                                  style: textTheme.hyperlink.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    shadows: [
                                      Shadow(
                                        color: colorPalette.textLink,
                                        offset: const Offset(0, -4),
                                      )
                                    ],
                                    decorationColor: colorPalette.textLink,
                                  ),
                                ),
                              ),
                              Text(
                                ' ${_localizations.and} ',
                                style: textTheme.bodyMedium?.copyWith(
                                  fontSize: 16,
                                  color: Colors.transparent,
                                  shadows: [
                                    Shadow(
                                      color: colorPalette.grayishBlueAccent,
                                      offset: const Offset(0, -2),
                                    )
                                  ],
                                  decorationColor: Colors.transparent,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _openEndDrawer(SelectedAcceptanceDocument.privacyPolicy);
                                },
                                child: Text(
                                  _localizations.privacyPolicy,
                                  style: textTheme.hyperlink.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    shadows: [
                                      Shadow(
                                        color: colorPalette.textLink,
                                        offset: const Offset(0, -4),
                                      )
                                    ],
                                    decorationColor: colorPalette.textLink,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          MASpacing.xxl(),
                          MAElevatedButton(
                            text: _localizations.iAccept.toUpperCase(),
                            onPressed: () {
                              context.read<SignInBloc>().state.whenOrNull(
                                success: (user, navigateToSummary) {
                                  _documentAcceptanceBloc.add(
                                    DocumentAcceptanceEvent.acceptDocumentsEvent(
                                      user.residentUserId,
                                    ),
                                  );
                                },
                              );
                              context.replaceNamed(CoreRoutes.home.name!);
                            },
                          ),
                          MASpacing.l(),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return DeclineDocumentsDialog();
                                },
                              );
                            },
                            child: Text(
                              _localizations.iDecline.toUpperCase(),
                              style: textTheme.hyperlink.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                shadows: [
                                  Shadow(
                                    color: colorPalette.textLink,
                                    offset: const Offset(0, -2),
                                  )
                                ],
                                decorationColor: colorPalette.textLink,
                              ),
                            ),
                          ),
                          MASpacing.s(),
                          MASpacing.xxl(),
                        ],
                      ),
                    ),
                  ],
                  middleColor: colorPalette.grassColor,
                  middleHeight: 40,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
