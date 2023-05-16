import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../core/values/dimens.dart';

class AppValueSlider extends StatelessWidget {
  const AppValueSlider({
    required this.title,
    required this.value,
    this.onChanged,
    this.min = _min,
    this.max = _max,
    this.onChangeEnd,
    Key? key,
  }) : super(key: key);

  final double min;
  final double max;

  final String title;
  final double value;
  final Function(double)? onChanged;
  final Function(double)? onChangeEnd;

  static const _min = -50.0;
  static const _max = 50.0;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$title:'),
            SizedBox(
              width: 50,
              child: Form(
                key: formKey,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  minLines: 1,
                  textAlign: TextAlign.center,
                  initialValue: value.floor().toString(),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.persianGreen))),
                  onFieldSubmitted: (value) {
                    if (formKey.currentState!.validate()) {
                      onChanged!(double.parse(value));
                    }
                  },
                  validator: (value) {
                    if (!(value == null || value.isEmpty)) {
                      try {
                        final doubleValue = double.parse(value);
                        if (doubleValue >= min && doubleValue <= max) {
                          return null;
                        }
                      } catch (_) {}
                    }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: AppColors.tangerine,
                        content: Text(
                            AppLocalizations.of(context)!.valueErr(min, max))));
                    return '';
                  },
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: AppDimens.d4),
        CupertinoSlider(
          activeColor: AppColors.darkCyan,
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
          onChangeEnd: onChangeEnd,
        ),
      ],
    );
  }
}
