import 'package:flutter/material.dart';
import '../../../data/models/gradient_direction/gradient_direction_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GradientDropdownButton extends StatelessWidget {
  final String name;
  final GradientDirectionModel dropDownButtonValue;
  final List<GradientDirectionModel> dropDownButtonItems;
  final Function(GradientDirectionModel) onChange;
  const GradientDropdownButton(
      {Key? key, required this.name, required this.dropDownButtonValue, required this.dropDownButtonItems, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        DropdownButton(
          value: dropDownButtonValue.getAligment(),
          items: allGradientDirecitons
              .map<DropdownMenuItem<AlignmentGeometry>>(
                (GradientDirectionModel value) => DropdownMenuItem(
                  value: value.getAligment(),
                  child: Text(AppLocalizations.of(context)!.directions(value.name)),
                ),
              )
              .toList(),
          onChanged: (value) {
            for (var element in allGradientDirecitons) {
              if (element.getAligment() == value) {
                onChange(element);
              }
            }
          },
        )
      ],
    );
  }
}
