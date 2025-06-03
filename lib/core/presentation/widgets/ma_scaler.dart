import 'package:flutter/material.dart';
import 'package:resident_app/core/shared/helpers/scaler_factor_helper.dart';

class MAScaler extends StatefulWidget {
  const MAScaler({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<MAScaler> createState() => _MAScalerState();
}

class _MAScalerState extends State<MAScaler> {
  late ScalerFactorHelper _scalerFactorHelper;

  @override
  void initState() {
    _scalerFactorHelper = ScalerFactorHelper();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double scalerFactor = _scalerFactorHelper.getFactor(
      MediaQuery.of(context).textScaler,
    );
    return Transform.scale(
      scale: scalerFactor,
      child: widget.child,
    );
  }
}
