// import 'dart:io';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter/material.dart';

// import '../gradient_direction/gradient_direction_model.dart';

// class GradientDirections {
//   final List<GradientDirectionModel> allGradientDirecitons;

//   GradientDirections(this.allGradientDirecitons);
// }

// Future<List<GradientDirectionModel>> getAllGradientDirecitons() async {
//   final String defaultLocale = Platform.localeName;
//   final locale = Locale(defaultLocale);
//   AppLocalizations t = await AppLocalizations.delegate.load(locale);

//   final allGradientDirecitons = <GradientDirectionModel>[
//     GradientDirectionModel(name: t.topRight, aligmentX: 1.0, aligmentY: -1.0),
//     GradientDirectionModel(name: t.topLeft, aligmentX: -1.0, aligmentY: -1.0),
//     GradientDirectionModel(name: t.topCenter, aligmentX: 0.0, aligmentY: -1.0),
//     GradientDirectionModel(name: t.centerRight, aligmentX: 1.0, aligmentY: 0.0),
//     GradientDirectionModel(name: t.centerLeft, aligmentX: -1.0, aligmentY: 0.0),
//     GradientDirectionModel(name: t.center, aligmentX: 0.0, aligmentY: 0.0),
//     GradientDirectionModel(name: t.bottomRight, aligmentX: 1.0, aligmentY: 1.0),
//     GradientDirectionModel(name: t.bottomLeft, aligmentX: -1.0, aligmentY: 1.0),
//     GradientDirectionModel(
//         name: t.bottomCenter, aligmentX: 0.0, aligmentY: 1.0),
//   ];

//   return allGradientDirecitons;
// }
