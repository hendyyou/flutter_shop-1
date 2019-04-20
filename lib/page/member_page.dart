import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会员中心'),
      ),
      body: ListView(
        children: <Widget>[
          _topHeader(),
          _orderTitle(),
          _orderType()
        ],
      ),
    );
  }

  Widget _topHeader(){
    return Container(
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.all(20),
      color: Colors.pinkAccent,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            width: ScreenUtil().setWidth(120),
            // height: ScreenUtil().setHeight(100),
            child: ClipOval(
              child: Image.network('http://www.gx8899.com/uploads/allimg/2018021008/mcjasrwyb13.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Sam',
              style: TextStyle(fontSize: ScreenUtil().setSp(36), color: Colors.black54)
            ),
          )
        ],
      ),
    );
  }

  // 我的订单标题
  Widget _orderTitle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 1)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.list),
        title: Text(
          '我的订单'
        ),
        trailing: Icon(
          Icons.arrow_right
        ),
      ),
    );
  }

  //
  Widget _orderType() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(150),
      padding: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(Icons.party_mode, size: 30,),
                Text('待付款')
              ],
            ),
          ),
          // ------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(Icons.query_builder, size: 30,),
                Text('待发货')
              ],
            ),
          ),
          // ------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(Icons.directions_car, size: 30,),
                Text('待收货')
              ],
            ),
          ),
          // ------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(Icons.content_paste, size: 30,),
                Text('待评价')
              ],
            ),
          ),
          // ------------
        ],
      ),
    );
  }
}
