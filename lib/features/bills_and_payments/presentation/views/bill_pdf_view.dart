import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/shared/extensions/ma_transformation_controller_extension.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/billings_bloc.dart';
import 'package:resident_app/features/bills_and_payments/presentation/routes.dart';

class BillPdfView extends StatefulWidget {
  const BillPdfView({
    super.key,
  });

  @override
  State<BillPdfView> createState() => _BillPdfViewState();
}

class _BillPdfViewState extends State<BillPdfView> {
  final TransformationController transformationController =
      TransformationController();

  final colorPalette = locator<ColorPalette>();
  final billingsBloc = locator<BillingsBloc>();

  @override
  void dispose() {
    transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'zoom_in_tag',
            onPressed: () {
              if (transformationController.isNotZoomed) {
                transformationController.setZoomTo3X();
              }
            },
            backgroundColor: colorPalette.buttonFabBg,
            child: Icon(
              Icons.add,
              color: colorPalette.buttonFabLabel,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FloatingActionButton(
            heroTag: 'zoom_out_tag',
            onPressed: () {
              if (transformationController.isZoomed) {
                transformationController.setZoomToInitial();
              }
            },
            backgroundColor: colorPalette.buttonFabBg,
            child: Icon(
              Icons.remove,
              color: colorPalette.buttonFabLabel,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(
              BillsAndPaymentsRoutes.billsAndPayments.name!,
            );
          },
        ),
        title: Text("${billingsBloc.state.billingLabel} Bill"),
        bottom: const MABottomAppBar(),
      ),
      body: Container(
        color: colorPalette.surfaceContainerLowest,
        child: InteractiveViewer(
          transformationController: transformationController,
          child: ValueListenableBuilder<Matrix4>(
            valueListenable: transformationController,
            builder: (context, matrix4, child) {
              return PDFView(
                filePath: billingsBloc.state.billingPDF?.path ?? '',
              );
            },
          ),
        ),
      ),
    );
  }
}
