import 'package:flutter/material.dart';
import './other_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("blue"), backgroundColor: Colors.blue,),
      drawer: new Center(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(   // 个人头像 信息
              accountName: new Text('blue'),
              accountEmail: new Text('mr.bluesnn@gmail.com'),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('current user'),
                child: new CircleAvatar(    //圆形图标控件
                  backgroundImage: new NetworkImage('https://tva3.sinaimg.cn/crop.0.0.512.512.180/a0359275jw8f88zb2zbjxj20e80e8glz.jpg'),
                ),
              ),

              otherAccountsPictures: <Widget>[  // 粉丝头像
                new GestureDetector(   //手势探测器，可以识别各种手势，这里只用到了onTap
                  onTap: () => print('other user'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage('https://avatar-static.segmentfault.com/264/715/2647150259-58637e81a65ef_huge256'),
                  ),
                ),
                new GestureDetector(
                  onTap: () => print('other user'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage('https://tva3.sinaimg.cn/crop.0.0.512.512.180/a0359275jw8f88zb2zbjxj20e80e8glz.jpg'),
                  ),
                ),
              ],
              decoration: new BoxDecoration(   //用一个BoxDecoration装饰器提供背景图片
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new ExactAssetImage('images/user_bg.jpg'),
                ),
              ),
            ),
            new ListTile(
              title: new Text('First Page'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage('First Page')));
              }
            ),
            new ListTile(
              title: new Text('Second Page'),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage('Second Page')));
              },
            ),
            new ListTile(
              title: new Text('Second Page'),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/a');
              }
            ),
            new Divider(),  //分割线控件
            new ListTile(   //退出按钮
              title: new Text('Close'),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),  //点击后收起侧边栏
            ),
          ],
        ),
      ),
      body: new Center(
        child: new Text('HomePage', style: new TextStyle(fontSize: 35.0),)
      ),
    );
  }
}