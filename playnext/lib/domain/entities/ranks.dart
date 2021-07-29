//PlayNext
import 'dart:ui';

import 'package:playnext/configs/colors.dart';

import '../../core/extensions/string.dart';
import '../../core/utils.dart';

enum Ranks {
  novice,
  bronze,
  silver,
  gold,
  platinum,
  emerald,
  champion,
  max,
}

extension RanksX on Ranks {
  String get value => getEnumValue(this).capitalize();

  static Ranks parse(String rawValue) {
    final type = Ranks.values.firstWhere(
      (element) => element.value.trim().toLowerCase() == rawValue.toLowerCase(),
      orElse: () => Ranks.max,
    );

    return type;
  }

  Color get color {
    switch (this) {
      case Ranks.novice:
        return AppColors.lightRed;

      case Ranks.bronze:
        return AppColors.lightBrown;

      case Ranks.silver:
        return AppColors.blue;

      case Ranks.gold:
        return AppColors.yellow;

      case Ranks.platinum:
        return AppColors.indigo;

      case Ranks.emerald:
        return AppColors.teal;

      case Ranks.champion:
        return AppColors.lightPurple;

      case Ranks.max:
        return AppColors.black;

      default:
        return AppColors.lightBlue;
    }
  }
}
