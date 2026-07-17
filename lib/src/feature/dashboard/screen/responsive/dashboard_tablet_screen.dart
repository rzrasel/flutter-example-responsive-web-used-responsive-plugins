import 'package:flutter/material.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class DashboardTabletScreen extends StatelessWidget {
  const DashboardTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 500),
        Container(
          decoration: BoxDecoration(
            color: RzTheme.color.backgroundColor.dark,
            border: Border(
              right: BorderSide(
                color: RzTheme.color.borderColor.gray,
                width: 1,
              ),
            ),
          ),
          child: SizedBox(height: 500),
        ),
        Center(child: Text("Tablet design")),
      ],
    );
  }

  /*@override
  Widget build(BuildContext context) {
    return const Column(children: [Center(child: Text("Tablet design"))]);
  }*/
}
