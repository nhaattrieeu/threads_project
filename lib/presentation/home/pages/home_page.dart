import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threads_project/core/config/config.dart';
import 'package:threads_project/presentation/create/pages/create_page.dart';
import 'package:threads_project/presentation/threads/pages/threads_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 62,
        border: Border.all(color: Theme.of(context).scaffoldBackgroundColor),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icHome),
            activeIcon: SvgPicture.asset(
              AppIcons.icHomeLight,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icSearch),
            activeIcon: SvgPicture.asset(
              AppIcons.icSearchLight,
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                showModalCreate(context);
              },
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Container(
                    width: 56,
                    height: 44,
                    // margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.icCreate),
                    ),
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icActivity),
            activeIcon: SvgPicture.asset(
              AppIcons.icActivityLight,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icProfile),
            activeIcon: SvgPicture.asset(
              AppIcons.icProfileLight,
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return const ThreadsPage();
      },
    );
  }
}
