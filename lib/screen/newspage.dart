import 'package:flutter/material.dart';
import 'package:berita/model/article.dart';
import 'package:berita/utils/utils.dart';
import 'package:berita/widgets/tab_menu.dart';
import 'package:berita/widgets/carousel_widget.dart';

class NewsPage extends StatefulWidget {
  final List<Article> article;

  const NewsPage(this.article, {Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Breaking News',
              style: titleHome,
            ),
          ),
          CarouselWidget(widget.article),
          TabBarMenu(widget.article),
        ],
      ),
    );
  }
}
