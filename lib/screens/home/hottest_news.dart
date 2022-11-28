import 'package:flutter/material.dart';
import 'package:news_api/providers/hottest_news.dart';
import 'package:provider/provider.dart';

import '../../providers/article_model.dart';
import '../../widgets/news_card.dart';
import '../../widgets/section_header.dart';

class HottestNews extends StatelessWidget {
  const HottestNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hottestData = Provider.of<Hottest>(context);
    final List<Article> hottest = hottestData.hottest;
    return Column(
      children: [
        const SectionHeader(title: 'Hottest News',),
        hottestData.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 400,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: hottest.length,
                  itemBuilder: ((context, index) {
                    return NewsCard(article: hottest[index]);
                  }),
                ),
              ),
      ],
    );
  }
}

