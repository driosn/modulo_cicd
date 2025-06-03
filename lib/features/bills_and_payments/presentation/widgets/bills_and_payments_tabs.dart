import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/ma_left_right_tab_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_tab.dart';
import 'package:resident_app/core/presentation/widgets/ma_up_down_tab_bar.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class BillsAndPaymentsTabs extends StatelessWidget {
  const BillsAndPaymentsTabs({
    super.key,
    required this.scaleFactor,
    required this.tabController,
  });

  final double scaleFactor;

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    return scaleFactor >= 1.5
        ? MAUpDownTabBar(
            tabController: tabController,
            tabs: [
              MATab(
                label: localizations.billsLabel,
                index: 0,
              ),
              MATab(
                label: localizations.paymentsLabel,
                index: 1,
              ),
            ],
          )
        : MALeftRightTabBar(
            tabController: tabController,
            tabs: [
              MATab(
                label: localizations.billsLabel,
                index: 0,
              ),
              MATab(
                label: localizations.paymentsLabel,
                index: 1,
              ),
            ],
          );
  }
}
