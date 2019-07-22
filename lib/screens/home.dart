import 'package:flutter/material.dart';
import 'package:instgram/screens/search.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  // _onTap(int index) {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
  //     return new Search();
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          LineIcons.camera,
          color: Colors.black,
          size: 30,
        ),
        title: Image(
          image: AssetImage('images/800px-Instagram_logo.svg.png'),
          height: 45,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.live_tv),
            onPressed: () {},
            color: Colors.black,
            iconSize: 26,
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
            color: Colors.black,
            iconSize: 26,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey,
            height: 0.3,
          ),
          preferredSize: Size.fromHeight(0.3),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 0.5))),
        child: BottomNavigationBar(
          elevation: 0,
          // onTap: _onTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.home,
                  color: Colors.black,
                ),
                title: Container(
                  height: 0,
                )),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Search();
                      }));
                    },
                    child: Icon(
                      LineIcons.search,
                      color: Colors.black,
                    )),
                title: GestureDetector(
                  child: Container(
                    height: 14,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Search();
                    }));
                  },
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.plus,
                  color: Colors.black,
                ),
                title: Container(
                  height: 14,
                )),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.heart_o , color: Colors.black,),
                title: Container(
                  height: 14,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.user,
                  color: Colors.black,
                ),
                title: Container(
                  height: 14,
                )),
          ],
        ),
      ),
      body: Post(),
    );
  }
}

class Post extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Post();
  }
}

class _Post extends State<Post> {
  @override
  Widget build(BuildContext context) {
    var widthFull = MediaQuery.of(context).size.width * 1;
    return Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.3))),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 5,
                    ),
                    ListTile(
                      trailing: PopUpMenu(),
                      title: Text(
                        'Ponisha',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'images/11378005_496202317219200_1355169958_a.jpg'))),
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Container(
                      width: widthFull,
                      height: 300,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('images/image.adapt.1663.medium.jpg'),
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 0,
                        ),
                        Icon(
                          LineIcons.heart_o,
                          color: Colors.black,
                          size: 30,
                        ),
                        Container(
                          width: 10,
                          height: 0,
                        ),
                        Icon(
                          LineIcons.comments_o,
                          color: Colors.black,
                          size: 30,
                        ),
                        Container(
                          width: 10,
                          height: 0,
                        ),
                        Icon(
                          LineIcons.share,
                          color: Colors.black,
                          size: 30,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            LineIcons.bookmark_o,
                            color: Colors.black,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: widthFull,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      child: Text(
                        '2,103 نفر پسندیدند',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'iransans',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: widthFull,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'مناطق دیدنی ایران در بخش های شمالی کشور...',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'iransans',
                            ),
                          ),
                          Text(
                            'بیشتر',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'iransans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: widthFull,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      child: Text(
                        'دیدن همه 124 کامنت این پست',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'iransans',
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'images/14269166_233295057068218_861918819_a.jpg'))),
                            ),
                            Container(
                              width: 10,
                            ),
                            Text(
                              'ارسال کامنت برای این پست...',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'iransans',
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ))
                  ],
                ));
          },
        ));
  }
}

class PopUpMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PopUpMenu();
  }
}

class _PopUpMenu extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      padding: EdgeInsets.all(0),
      icon: Icon(Icons.more_horiz, color: Colors.black,),
      elevation: 1,
      tooltip: 'بیشتر',
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text('ریپورت' , style: TextStyle(color: Colors.red),),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('بی صدا', style: TextStyle(color: Colors.red),),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('لغو دنبال کردن', style: TextStyle(color: Colors.red),),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('اشتراک گذاری'),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('کپی لینک'),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('خاموش کردن اعلانات'),
        ),
      ],
    );
  }
}
