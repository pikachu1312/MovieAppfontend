import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/contract.dart';
import 'package:movieapp/until.dart';

class Dotpageview extends StatelessWidget {
  const Dotpageview({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
      transformAlignment: Alignment.centerLeft,
      child: Container(
        width: active ? 20 : 6,
        decoration: BoxDecoration(color: active ? primary_color : Colors.white),
      ),
    );
  }
}
