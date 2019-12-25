import 'package:demo/bean/DailyBean.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ThreePage extends StatefulWidget {
  @override
  createState() => ThreeState();
}

List<Stories> stories = [];
List<Top_stories> topStories = [];

class ThreeState extends State<ThreePage> {


  void requestDaily() async {
    try {
      Response response =
      await new Dio().get("https://api.isoyu.com/api/Zhihu/zhihu_daily");
      print("response   " + response.toString());
      DailyBean dailyBean = new DailyBean.fromJsonMap(response.data);
      setState(() {
        stories.clear();
        stories.addAll(dailyBean.data.stories);

        topStories.clear();
        topStories.addAll(dailyBean.data.top_stories);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    requestDaily();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((buildContext, index) {
        return topStoriesItem(topStories[index]);
      }),
      itemCount: topStories.length,
    );

//    return Column(
//      children: <Widget>[
//        ListView.builder(
//          scrollDirection: Axis.horizontal,
//          itemBuilder: ((buildContext, index) {
//            return storiesItem(stories[index]);
//          }),
//          itemCount: stories.length,
//        ),
//        ListView.builder(
//          itemBuilder: ((buildContext, index) {
//            return topStoriesItem(topStories[index]);
//          }),
//          itemCount: topStories.length,
//        )
//      ],
//    );
  }
}

List<Widget> nestedScroll(BuildContext context, bool innerBoxIsScrolled) {
  return [ ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: ((buildContext, index) {
      return storiesItem(stories[index]);
    }),
    itemCount: stories.length,
  ),
  ];
}

Widget storiesItem(Stories stories) {
  return Container(child: new Text(stories.title));
}

Widget topStoriesItem(Top_stories top_stories) {
  return Container(child: new Text(top_stories.title));
}
