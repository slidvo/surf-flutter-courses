import 'classes/dailyActivity.dart';
import 'util/MathUtil.dart';

/**
 * Описание одного из своих каждодневных дел при помощи псевдокода,
 * используя логические операторы
 */
void main() {
  Function rb = MathUtil.grb;
  final isWakedUp = rb();
  final haveFood = rb();
  final isSick = rb();
  DailyActivity(isWakedUp, isSick, haveFood).startActivity();
}
