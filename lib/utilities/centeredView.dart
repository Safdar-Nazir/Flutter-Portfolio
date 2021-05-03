import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CenteredView extends StatelessWidget {
  final Widget childWidget;
  const CenteredView({
    Key? key,
    required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        // vertical: 60,
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1200,
        ),
        child: childWidget,
      ),
    );
  }
}
