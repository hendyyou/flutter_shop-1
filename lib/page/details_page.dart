import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/details_info.dart';
import './details_page/details_top.dart' show DetailsTopArea;
import './details_page/details_explain.dart' show DetailsExplain;
import './details_page/details_tabbar.dart' show DetailsTabbar;
import './details_page/details_web.dart' show DetailWeb;
import './details_page/details_bottom.dart' show DetailsBottom;

class DetailsPage extends StatelessWidget {
  final String goodsId;
  DetailsPage(this.goodsId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('商品详情页'),
      ),
      body: FutureBuilder(
        future: _getBackInfo(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Stack(
              children: <Widget>[
                Container(
                  child: ListView(
                    children: <Widget>[
                      DetailsTopArea(),
                      DetailsExplain(),
                      DetailsTabbar(),
                      DetailWeb()
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: DetailsBottom(),
                )
              ],
            );
          } else {
            return Text('加载中');
          }
        },
      )
    );
  }

  Future _getBackInfo (BuildContext context) async {
    await Provide.value<DetailsInfoProvide>(context).getGoodsInfo(goodsId);
    return '完成加载';
  }
}