import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_api/constants/colors.dart';
import 'package:news_api/constants/text_styles.dart';

import '../providers/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: cardBG,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: textGrey.withOpacity(0.1),
              offset: const Offset(2, 2),
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(article.urlToImage),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: textGrey.withOpacity(0.1),
                        offset: const Offset(2, 2),
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: mainBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'Philosophy',
                          style: whiteh3,
                        )),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.fire,
                            color: Colors.amber,
                          ),
                          Text(
                            'Trending',
                            style: d3,
                          ),
                        ],
                      ),
                      const Text(
                        '2 Days Ago',
                        style: d3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                    child: Text(
                      article.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: h2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person_pin_circle_rounded),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            article.author.split(' ').take(2).join(' '),
                            style: h3,
                          ),
                        ],
                      ),
                      const FaIcon(
                        FontAwesomeIcons.barsStaggered,
                        size: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
