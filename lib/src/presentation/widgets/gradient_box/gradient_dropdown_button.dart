import 'package:flutter/material.dart';
import '../../../domain/entities/gradient_direction/gradient_direction_entity.dart';

class GradientDropdownButton extends StatelessWidget {
  final String name;
  final GradientDirectionEntity dropDownButtonValue;
  final List<GradientDirectionEntity> dropDownButtonItems;
  final Function(GradientDirectionEntity) onChange;
  const GradientDropdownButton(
      {Key? key,
      required this.name,
      required this.dropDownButtonValue,
      required this.dropDownButtonItems,
      required this.onChange})
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
                    (GradientDirectionEntity value) => DropdownMenuItem(
                          value: value.getAligment(),
                          child: Text(value.name),
                        ))
                .toList(),
            onChanged: (value) {
              for (var element in allGradientDirecitons) {
                if (element.getAligment() == value) {
                  onChange(element);
                }
              }
            })
      ],
    );
  }
}
