import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/atoms/button_size.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton._({
    super.key,
    this.onPressed,
    required this.title,
    required this.isLoading,
    required this.buttonSize,
  });

  factory PrimaryButton.responsive({
    Key? key,
    VoidCallback? onPressed,
    required String title,
    bool isLoading = false,
  }) =>
      PrimaryButton._(
        key: key,
        onPressed: onPressed,
        title: title,
        isLoading: isLoading,
        buttonSize: ButtonSize.responsive,
      );

  factory PrimaryButton.blocked({
    Key? key,
    VoidCallback? onPressed,
    required String title,
    bool isLoading = false,
  }) =>
      PrimaryButton._(
        key: key,
        onPressed: onPressed,
        title: title,
        isLoading: isLoading,
        buttonSize: ButtonSize.blocked,
      );

  final VoidCallback? onPressed;
  final String title;
  final bool isLoading;
  final ButtonSize buttonSize;

  Widget _getLabel() => isLoading
      ? _getLoadingIndicator()
      : Text(
          title,
          textAlign: TextAlign.center,
        );

  Widget _getLoadingIndicator() => const SizedBox(
        height: 22,
        width: 22,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );

  Color? _getStyle(Set<MaterialState> states, BuildContext context) {
    if (states.contains(MaterialState.disabled)) {
      return isLoading
          ? context.appTheme.colorScheme.primary.withAlpha(100)
          : context.appTheme.disabledColor;
    }
    return null; // Use the component's default.
  }

  @override
  Widget build(BuildContext context) {
    final button = FilledButton(
      onPressed: !isLoading ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => _getStyle(states, context),
        ),
      ),
      child: _getLabel(),
    );

    return switch (buttonSize) {
      ButtonSize.responsive => Row(
          children: [
            Expanded(child: button),
          ],
        ),
      _ => button,
    };
  }
}
