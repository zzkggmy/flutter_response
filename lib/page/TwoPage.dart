import 'package:demo/bean/ImageBean.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  @override
  createState() => TwoSate();
}

class TwoSate extends State<TwoPage> {
  List<ImageData> images = [];
  int page = 10;

  ScrollController _scrollController = new ScrollController();

  void requestImages() async {
    try {
      Response response = await new Dio().get(
          "https://api.isoyu.com/api/picture/index?page=" + page.toString());
      ImageBean imageBean = new ImageBean.fromJsonMap(response.data);
      setState(() {
        images.clear();
        images.addAll(imageBean.data);
      });
    } catch (e) {
      print(e);
    }
  }

  void requestMoreImages() async {
    try {
      Response response = await new Dio().get(
          "https://api.isoyu.com/api/picture/index?page=" + page.toString());
      ImageBean imageBean = new ImageBean.fromJsonMap(response.data);
      setState(() {
        images.addAll(imageBean.data);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    requestImages();
    _scrollController.addListener((() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        page += 10;
        requestMoreImages();
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((buildContext, index) {
        return ImageItem(context, images[index]);
      }),
      controller: _scrollController,
      itemCount: images.length,
    );
  }
}

Widget ImageItem(BuildContext context, ImageData imageData) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: new EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(
          image: new NetworkImage(imageData.tcover),
          fit: BoxFit.cover,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 7),
              child: Text(
                imageData.setname,
                softWrap: true,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 7, top: 10),
              child: Text(
                imageData.desc,
                softWrap: true,
                style: TextStyle(color: Colors.black38, fontSize: 11),
              ),
            ),
          ],
        ))
      ],
    ),
  );
}
