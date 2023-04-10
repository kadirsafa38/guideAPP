import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_ui_speed_code/app_colors.dart';
import 'package:notes_app_ui_speed_code/views/all_view.dart';
import 'package:notes_app_ui_speed_code/views/folder_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              actions: [
                TextButton(
                  child: Text(
                    'yeni plan oluştur',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColors.lightTextColor),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.square),
                )
              ],
              leadingWidth: 0,
              leading: const SizedBox.shrink(),
              title: const Text('Notlarım'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Hepsi',
                  ),
                  Tab(
                    text: 'Dosyalarım',
                  ),
                ],
              )),
          body: const TabBarView(
            children: [AllView(), FolderView()],
          ),
        ));
  }
}