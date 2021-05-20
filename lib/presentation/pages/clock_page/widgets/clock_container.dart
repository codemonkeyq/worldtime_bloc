import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:worldtime_bloc/res/colour.dart';

class ClockContainer extends HookWidget {
  const ClockContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    useEffect(() {}, []);

    return <Widget>[
      Center(
        child: Container(
          width: 270,
          height: 270,
          decoration: BoxDecoration(
              color: AppColors.darkClockBg, shape: BoxShape.circle),
        ),
      ),
      Center(
        child: this.child,
      ),
      Center(
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
      )
    ].toStack(alignment: Alignment.center);
  }
}
