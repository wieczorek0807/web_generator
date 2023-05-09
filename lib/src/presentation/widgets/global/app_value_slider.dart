import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/values/dimens.dart';

class AppValueSlider extends StatelessWidget {
  AppValueSlider({
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
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final myController = TextEditingController();
    // myController.text = value.floor().toString();
    final _formKey = GlobalKey<FormState>();

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
              width: 130,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  initialValue: value.floor().toString(),
                  onFieldSubmitted: (value) {
                    if (_formKey.currentState!.validate()) {
                      onChanged!(double.parse(value));
                    }
                  },
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (!(value == null || value.isEmpty)) {
                      try {
                        final doubleValue = double.parse(value);
                        if (doubleValue >= min && doubleValue <= max) {
                          return null;
                        }
                      } catch (_) {
                        return '$min<= number <=$max';
                      }
                    }
                    return '$min<= number <=$max';
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
