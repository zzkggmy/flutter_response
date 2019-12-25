import 'package:demo/bean/DataBean.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  @override
  createState() => OneSate();
}

class OneSate extends State<OnePage> {
  List<Datas> datas = [];

  @override
  void initState() {
    super.initState();
    getContent();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: new EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
      itemBuilder: (BuildContext context, int index) {
        return itemBuider(datas[index]);
      },
      addAutomaticKeepAlives: true,
      itemCount: datas.length,
    );
  }

  Future<DataBean> getContent() async {
    Response response;
    DataBean dataBean;
    try {
      response =
          await Dio().get("https://www.wanandroid.com/article/list/0/json");
      dataBean = DataBean.fromJsonMap((response.data));
      setState(() {
        datas.clear();
        datas.addAll(dataBean.data.datas);
      });
      print("databean   " + dataBean.data.size.toString());
    } catch (e) {
      print(e);
    }

    return dataBean;
  }
}

Widget itemBuider(Datas data) {
  return new Container(
    padding: EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 30),
    child: Text(
      data.title,
      style: TextStyle(color: Colors.black87),
    ),
  );
}
