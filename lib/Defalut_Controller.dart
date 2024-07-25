import 'package:flutter/material.dart';
import 'package:movieapp/Screen/Discovery.dart';
import 'package:movieapp/Screen/Home.dart';
import 'package:movieapp/Screen/Save.dart';
import 'package:movieapp/Screen/User.dart';
import 'package:movieapp/contract.dart';
import 'package:movieapp/model/Default_tab_model.dart';

class Defalut_Controller extends StatelessWidget {
  const Defalut_Controller({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
          child: Scaffold(
        body: TabBarView(
          children: [Home(), Discovery(), Save(), User()],
        ),
        bottomNavigationBar: Container(
          height: 90,
          padding: EdgeInsets.all(9),
          child: TabBar(
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  color: primary_color,
                  borderRadius: BorderRadius.circular(10)),
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorPadding:
                  EdgeInsets.symmetric(horizontal: -12, vertical: 4),
              labelColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              tabs: List.generate(
                  defaulttabmodels.length,
                  (index) => Tab(
                        text: defaulttabmodels[index].text,
                        icon: Icon(defaulttabmodels[index].icon),
                      ))),
        ),
      )),
    );
  }
}
