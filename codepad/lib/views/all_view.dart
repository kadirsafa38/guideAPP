import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_ui_speed_code/app_colors.dart';
import 'package:notes_app_ui_speed_code/views/curved_box.dart';

class AllView extends StatelessWidget {
  const AllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.notesMedical,
          color: AppColors.orange,
        ),
      ),
      body: AnimationLimiter(
        child: MasonryGridView.count(
            padding: const EdgeInsets.all(16),
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemCount: 6,
            itemBuilder: (context, i) {
              return AnimationConfiguration.staggeredGrid(
                  position: i,
                  columnCount: 2,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: i == 0
                          ? CurvedBox(
                        children: [
                          Text(
                            'Görevlerim',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const _ListTileRow(
                              isChecked: true,
                              text: 'Birincil görevler?'),
                          const _ListTileRow(
                              isChecked: true, text: 'Yapılacaklar listesi'),
                          const _ListTileRow(
                              isChecked: false, text: 'Alışkanlıklarım'),
                          const _ListTileRow(
                              isChecked: false, text: 'Öncelikler'),
                          const SizedBox(
                            height: 16,
                          ),
                          const DateFooter(
                              date: 'Jan 17', footerText: 'Yap!')
                        ],
                      )
                          : i == 1
                          ? CurvedBox(
                        children: [
                          Text(
                            'Ders programım',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                              '''""\n'''),
                          const SizedBox(
                            height: 16,
                          ),
                          const DateFooter(
                              date: 'şubat 15', footerText: 'Sıkı çalış!!')
                        ],
                      )
                          : i == 2
                          ? CurvedBox(
                        children: [
                          Text(
                            'Gelecek Planlarım',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                              'Dil öğren'),
                          const _ListTileRow(
                              isChecked: true,
                              text: 'Ensturman çalmayı öğren'),
                          const _ListTileRow(
                              isChecked: true,
                              text: 'Dünya klasiklerini bitir'),
                          const _ListTileRow(
                              isChecked: false,
                              text: 'Seyahat et'),
                          const SizedBox(
                            height: 16,
                          ),
                          const DateFooter(
                              date: '',
                              footerText: '"yaşamak güzeldir"')
                        ],
                      )
                          : i == 3
                          ? CurvedBox(
                        padding: EdgeInsets.zero,
                        children: [
                          Container(
                              height: 150,
                              width: w,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      25)),
                              child: Image.asset(
                                'assets/travel.jpg',
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(
                                horizontal: 16.0),
                            child: Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.location,
                                  color: AppColors.lightGrey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Hayatın tadını çıkar',
                                  style: TextStyle(
                                      color: AppColors
                                          .lightGrey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0),
                            child: Text(
                              '"Hayat sana verilen bir hazinedir,onu iyi kullan!"',
                              style: TextStyle(
                                  color: AppColors.lightGrey),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0),
                            child: DateFooter(
                                date: '',
                                footerText: ''),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      )
                          : i == 4
                          ? CurvedBox(
                        children: [
                          Text(
                            'Haftalık planlamalarım',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                fontWeight:
                                FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                              '-  \n  -  \n  - \n  -  \n  -'),
                          const SizedBox(
                            height: 16,
                          ),
                          const DateFooter(
                              date: '',
                              footerText: '')
                        ],
                      )
                          : i == 5
                          ? CurvedBox(
                        children: [
                          Text(
                            'Spor Programım',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                fontWeight:
                                FontWeight
                                    .bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .center,
                            children: const [
                              Icon(
                                CupertinoIcons
                                    .lock_fill,
                                size: 55,
                                color: AppColors
                                    .lightGrey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const DateFooter(
                              date: '',
                              footerText:
                              '')
                        ],
                      )
                          : const SizedBox.shrink(),
                    ),
                  ));
            }),
      ),
    );
  }
}

class _ListTileRow extends StatelessWidget {
  const _ListTileRow({Key? key, required this.isChecked, required this.text})
      : super(key: key);
  final String text;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 16,
          child: Checkbox(
            shape: const CircleBorder(
              side: BorderSide(
                width: 2,
                color: AppColors.white,
              ),
            ),
            value: isChecked,
            activeColor: AppColors.white,
            checkColor: AppColors.grey,
            onChanged: (bool? val) {},
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(text,
              style: TextStyle(
                  decoration: isChecked ? TextDecoration.lineThrough : null)),
        )
      ],
    );
  }
}

class DateFooter extends StatelessWidget {
  const DateFooter({Key? key, required this.date, required this.footerText})
      : super(
    key: key,
  );
  final String date, footerText;
  final TextStyle style = const TextStyle(color: AppColors.lightGrey);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: style,
        ),
        Text(
          footerText,
          style: style,
        )
      ],
    );
  }
}