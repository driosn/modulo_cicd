import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/selection_controls/custom_material_text_selection_control.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAOneTimeInput extends StatefulWidget {
  const MAOneTimeInput({
    super.key,
    required this.onLastDigitEntered,
    this.errorMessage,
  });

  final Function(String) onLastDigitEntered;
  final String? errorMessage;

  @override
  State<MAOneTimeInput> createState() => _MAOneTimeInputState();
}

class _MAOneTimeInputState extends State<MAOneTimeInput> {
  final double _fullFieldWidth = 364;
  final double _kTextFieldDefaultHeight = 60;
  final double _kTextFieldDefaultWidth = 44;
  final int _numberOfSingleFields = 6;

  late List<_OneTimeInputFieldItemState> _inputItemStates;
  late bool copiedCode;
  late bool hasError;

  void _initInputItemStates() {
    _inputItemStates = <_OneTimeInputFieldItemState>[];
    for (int i = 0; i < _numberOfSingleFields; i++) {
      final focusNode = FocusNode();
      final cursorWidthNotifier = ValueNotifier<double>(0.0);
      final useExtraPaddingNotifier = ValueNotifier(false);
      final textEditingController = TextEditingController();
      final inputItem = _OneTimeInputFieldItemState(
        position: i,
        focusNode: focusNode,
        fieldCursorWidthNotifier: cursorWidthNotifier,
        useExtraPaddingNotifier: useExtraPaddingNotifier,
        textEditingController: textEditingController,
        latestValue: '',
        focusNodeListener: () {
          if (focusNode.hasFocus) {
            cursorWidthNotifier.value = 2.0;
            if (textEditingController.text.isEmpty) {
              useExtraPaddingNotifier.value = true;
            }
          } else {
            cursorWidthNotifier.value = 0.0;
            useExtraPaddingNotifier.value = false;
          }
        },
      );
      _inputItemStates.add(
        inputItem,
      );
    }
  }

  void _disposeInputItemStates() {
    for (int i = 0; i < _inputItemStates.length; i++) {
      _inputItemStates[i].dispose();
    }
  }

  @override
  void initState() {
    super.initState();

    copiedCode = false;
    hasError = widget.errorMessage != null;
    _initInputItemStates();
  }

  @override
  void dispose() {
    _disposeInputItemStates();
    super.dispose();
  }

  String? _getFullCodeOrNull() {
    final List<String> characters = [];
    for (int i = 0; i < _inputItemStates.length; i++) {
      final text = _inputItemStates[i].textEditingController.text;

      if (text.isNotEmpty) {
        characters.add(text);
      }
    }

    if (characters.length == 6) {
      return characters.join();
    }

    return null;
  }

  void _focusNextInputField(_OneTimeInputFieldItemState inputState) {
    if (copiedCode == false) {
      inputState.focusNode.unfocus();
      if (inputState.position != _inputItemStates.length - 1) {
        final nextInputItemState = _inputItemStates
            .firstWhere((i) => i.position == inputState.position + 1);

        nextInputItemState.focusNode.requestFocus();
      }
    }
    if (copiedCode == true) {
      inputState.focusNode.unfocus();
    }
    copiedCode = false;
  }

  void _focusPreviousInputField(_OneTimeInputFieldItemState inputState) {
    if (inputState.position != 0) {
      final previousInputItemState = _inputItemStates
          .firstWhere((i) => i.position == inputState.position - 1);

      previousInputItemState.focusNode.requestFocus();
    }
    copiedCode = false;
  }

  Future<void> _fillFieldsOnPaste() async {
    final ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);

    final characters = <String>[];

    if (clipboardData != null) {
      final clipboardText = clipboardData.text;

      if (clipboardText != null) {
        for (int i = 0; i < (clipboardText.length); i++) {
          characters.add(clipboardText[i]);
        }

        for (int i = 0; i < characters.length; i++) {
          _inputItemStates[i].textEditingController.text = characters[i];
        }

        if (mounted) {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
          copiedCode = true;
        }
      }
    }
  }

  void _onChangedAlreadyPopulatedField(
    String value,
    int inputItemIndex,
  ) {
    final inputItemState = _inputItemStates[inputItemIndex];
    final latestValue = inputItemState.latestValue;
    final newValue = value.replaceAll(latestValue, '');

    if (newValue.isEmpty) {
      _inputItemStates[inputItemIndex].textEditingController.text =
          inputItemState.latestValue;
    } else if (newValue.length == 2) {
      _inputItemStates[inputItemIndex] = inputItemState.copyWith(
        latestValue: newValue.characters.first,
      );
      _inputItemStates[inputItemIndex].textEditingController.text =
          newValue.characters.first;
    } else {
      _inputItemStates[inputItemIndex] = inputItemState.copyWith(
        latestValue: newValue,
      );
      _inputItemStates[inputItemIndex].textEditingController.text = newValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return SizedBox(
      width: _fullFieldWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: _kTextFieldDefaultHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _numberOfSingleFields,
                (index) {
                  _OneTimeInputFieldItemState inputItemState =
                      _inputItemStates[index];

                  return SizedBox(
                    height: _kTextFieldDefaultHeight,
                    width: _kTextFieldDefaultWidth,
                    child: ValueListenableBuilder<double>(
                      valueListenable: inputItemState.fieldCursorWidthNotifier,
                      builder: (context, cWidth, child) {
                        return ValueListenableBuilder<bool>(
                          valueListenable:
                              inputItemState.useExtraPaddingNotifier,
                          builder: (context, useExtraPadding, child) {
                            return TextField(
                              controller: inputItemState.textEditingController,
                              focusNode: inputItemState.focusNode,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              maxLength: 6,
                              autocorrect: false,
                              cursorHeight: 32,
                              cursorWidth: cWidth,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    height: 1.25,
                                  ),
                              decoration: InputDecoration(
                                counterText: '',
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 22,
                                ),
                                isCollapsed: true,
                                enabledBorder: hasError
                                    ? OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          width: 3,
                                          color: colorPalette.warningWarning,
                                        ),
                                      )
                                    : OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: colorPalette.surfaceDim,
                                        ),
                                      ),
                              ),
                              selectionControls:
                                  CustomMaterialTextSelectionControl(
                                onPaste: (delegate) async {
                                  await _fillFieldsOnPaste();
                                },
                              ),
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  _focusPreviousInputField(inputItemState);
                                  inputItemState.useExtraPaddingNotifier.value =
                                      true;
                                } else {
                                  if (value.length >= 3 && value.length <= 6) {
                                    _fillFieldsOnPaste();
                                  }

                                  if (value.length == 2) {
                                    _onChangedAlreadyPopulatedField(
                                      value,
                                      index,
                                    );
                                  } else {
                                    final updatedItemState =
                                        inputItemState.copyWith(
                                      latestValue: value,
                                    );

                                    _inputItemStates[index] = updatedItemState;
                                  }

                                  _focusNextInputField(inputItemState);
                                  inputItemState.useExtraPaddingNotifier.value =
                                      false;
                                }

                                final code = _getFullCodeOrNull();
                                if (code != null) {
                                  widget.onLastDigitEntered(code);
                                }

                                return;
                              },
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          if (hasError) ...[
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.errorMessage!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: colorPalette.warningWarning,
                  ),
            )
          ],
        ],
      ),
    );
  }
}

class _OneTimeInputFieldItemState {
  _OneTimeInputFieldItemState({
    required this.position,
    required this.focusNode,
    required this.fieldCursorWidthNotifier,
    required this.useExtraPaddingNotifier,
    required this.textEditingController,
    required this.latestValue,
    required this.focusNodeListener,
  }) {
    focusNode.addListener(focusNodeListener);
  }

  final int position;
  final FocusNode focusNode;
  final ValueNotifier<double> fieldCursorWidthNotifier;
  final ValueNotifier<bool> useExtraPaddingNotifier;
  final TextEditingController textEditingController;
  final String latestValue;
  final VoidCallback focusNodeListener;

  _OneTimeInputFieldItemState copyWith(
      {int? position,
      FocusNode? focusNode,
      ValueNotifier<double>? fieldCursorWidthNotifier,
      ValueNotifier<bool>? useExtraPaddingNotifier,
      TextEditingController? textEditingController,
      String? latestValue,
      VoidCallback? focusNodeListener}) {
    return _OneTimeInputFieldItemState(
      position: position ?? this.position,
      focusNode: focusNode ?? this.focusNode,
      fieldCursorWidthNotifier:
          fieldCursorWidthNotifier ?? this.fieldCursorWidthNotifier,
      useExtraPaddingNotifier:
          useExtraPaddingNotifier ?? this.useExtraPaddingNotifier,
      textEditingController:
          textEditingController ?? this.textEditingController,
      latestValue: latestValue ?? this.latestValue,
      focusNodeListener: focusNodeListener ?? this.focusNodeListener,
    );
  }

  void dispose() {
    focusNode.dispose();
    fieldCursorWidthNotifier.dispose();
    useExtraPaddingNotifier.dispose();
    textEditingController.dispose();
  }
}
