import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import './home.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Search();
  }
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  contentPadding:
                      new EdgeInsets.symmetric(vertical: 9.0, horizontal: 9.0),
                  filled: true,
                  fillColor: Colors.grey[200],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey[200])),
                  hintText: 'جستوجو'),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
            LineIcons.arrow_left,
            color: Colors.black,
            size: 30,
          ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                LineIcons.camera,
              ),
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
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Home();
                      }));
                    },
                    child: Icon(
                      LineIcons.home,
                      color: Colors.black,
                    )),
                title: GestureDetector(
                  child: Container(
                    height: 0,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Home();
                      }));
                  },
                )),
              BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.search,
                    color: Colors.black,
                  ),
                  title: Container(
                    height: 14,
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
                  icon: Icon(
                    LineIcons.heart_o,
                    color: Colors.black,
                  ),
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
        body: Container(child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
          return Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.grey[300],
                    height: 90,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.grey[300],
                    height: 90,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.grey[300],
                    height: 90,
                  ),
                ),
              ],
            );
        },)));
  }
}
