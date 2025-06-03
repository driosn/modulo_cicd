import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';

extension ContextExtension on BuildContext {
  showMASnackbar(MASnackBar snackbar) {
    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }

  bool isWhiteLabel() => locator<WhitelabelBloc>().state.whitelabel != Whitelabel.empty;
}
