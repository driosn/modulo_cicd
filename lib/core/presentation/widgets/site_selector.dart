import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/extensions/site_extensions.dart';
import 'package:resident_app/core/shared/extensions/user_extensions.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/user/domain/entities/site.dart';

class SiteSelectorItem {
  const SiteSelectorItem({
    required this.text,
    required this.value,
  });

  final String text;
  final Site value;
}

class SiteSelector extends StatefulWidget {
  const SiteSelector({
    super.key,
    this.onSelectedSite,
  });

  final Function(Site onSelectedSite)? onSelectedSite;

  @override
  State<SiteSelector> createState() => _SiteSelectorComponentState();
}

class _SiteSelectorComponentState<T> extends State<SiteSelector> {
  late ValueNotifier<Site> _siteSelectorNotifier;
  final SiteBloc _siteBloc = locator<SiteBloc>();
  final UserBloc _userBloc = locator<UserBloc>();

  @override
  void initState() {
    _siteSelectorNotifier = ValueNotifier(_siteBloc.state.selectedSite);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiteBloc, SiteState>(
      bloc: _siteBloc,
      listenWhen: (previous, current) {
        return previous.selectedSite != current.selectedSite;
      },
      listener: (context, state) {
        widget.onSelectedSite?.call(state.selectedSite);
      },
      builder: (context, state) {
        final selectedSite = state.selectedSite;
        final allSites = _userBloc.state.user.allSites;
        final items = allSites
            .map(
              (site) => SiteSelectorItem(
                text: site.fullAddress,
                value: site,
              ),
            )
            .toList();

        return PopScope(
          onPopInvokedWithResult: (didPop, result) {
            locator<AutoPaySettingsBloc>().add(AutoPaySettingsEvent.fetch(
              state.selectedSite.resident.residentId,
            ));
          },
          child: Column(
            children: items
                .map(
                  (item) => _selectorItem(
                    context,
                    item: item,
                    selectedSite: selectedSite,
                    isLastItem: items.last == item,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }

  Widget _selectorItem(
    BuildContext context, {
    required SiteSelectorItem item,
    required Site selectedSite,
    bool isLastItem = false,
  }) {
    final colorPalette = locator<ColorPalette>();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        _siteSelectorNotifier.value = item.value;
        _siteBloc.handleSiteSelection(item.value);
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RelationalPadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SiteAddress(
                        site: item.value,
                        iconColor: colorPalette.iconBaseTextIcon,
                        textColor: colorPalette.textBase,
                        hideIcon: true,
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ),
              ),
              ValueListenableBuilder<Site>(
                valueListenable: _siteSelectorNotifier,
                builder: (context, selectedValue, child) {
                  return selectedValue.isSameSite(item.value)
                      ? Container(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: CircleAvatar(
                            backgroundColor: colorPalette.primaryBase,
                            child: Icon(
                              Icons.done,
                              color: colorPalette.surfaceContainerLowest,
                            ),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                          ),
                        );
                },
              ),
            ],
          ),
          isLastItem
              ? const SizedBox.shrink()
              : Container(
                  color: colorPalette.outline,
                  height: 1,
                ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
