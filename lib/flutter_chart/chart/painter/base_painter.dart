import 'package:flutter/material.dart';
import 'package:flutter_sample/flutter_chart/chart/chart_bean.dart';

/// Base
class BasePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  /// 计算极值 最大值,最小值
  List<double> calculateMaxMin(List<ChartBean>? chatBeans) {
    if (chatBeans == null || chatBeans.length == 0) return [0, 0];
    double max = 0.0, min = 0.0;
    for (ChartBean bean in chatBeans) {
      if (max < bean.y) {
        max = bean.y;
      }
      if (min > bean.y) {
        min = bean.y;
      }
    }
    return [max, min];
  }
}
