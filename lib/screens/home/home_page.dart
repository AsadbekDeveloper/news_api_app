import 'package:flutter/material.dart';
import 'package:news_api/constants/colors.dart';
import 'package:news_api/constants/text_styles.dart';
import 'package:news_api/providers/genres.dart';
import 'package:news_api/widgets/section_header.dart';

import '../../widgets/main_appbar.dart';
import 'hottest_news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          MainAppBar(size: size),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const HottestNews(),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    const SectionHeader(title: 'Explore'),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/250?image=$index',
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: textBlack.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FittedBox(
                                  child: Text(
                                    genres[index],
                                    style: whiteh3,
                                  ),
                                ),
                              ),
                            );
                          }),
                          separatorBuilder: ((context, index) => const SizedBox(
                                width: 10,
                              )),
                          itemCount: genres.length),
                    )
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
