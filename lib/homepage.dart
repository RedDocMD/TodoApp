import 'package:flutter/material.dart';

import 'styles/global.dart';
import 'screen.dart';

import 'dart:developer' as developer;

class HomePage extends StatelessWidget {
  final List<Screen> screens;

  const HomePage({Key key, @required this.screens}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: screens.map((e) => e.widget).toList(),
            ),
            Container(
                height: 150,
                padding: EdgeInsets.only(
                  left: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: topAreaBgColor,
                ),
                child: Builder(
                  builder: (context) {
                    final tabController = DefaultTabController.of(context);
                    tabController.addListener(() {
                      if (!tabController.indexIsChanging) {
                        developer.log('${tabController.index}',
                            name: 'hell-na');
                      }
                    });
                    return Row(
                      children: [
                        Text(
                          'Intray',
                          style: intrayTitleFont,
                        ),
                        Container(),
                      ],
                    );
                  },
                )),
          ],
        ),
        appBar: AppBar(
          title: TabBar(
            tabs: screens.map((e) => Tab(icon: e.icon)).toList(),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: topBarIconSelectedColor,
            unselectedLabelColor: topBarIconUnselectedColor,
            indicatorColor: topBarIndicatorColor,
          ),
          backgroundColor: topAreaBgColor,
          elevation: 0,
        ),
      ),
    );
  }
}
