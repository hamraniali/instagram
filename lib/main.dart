import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/search.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'iransans'),
  title: 'test-b insta',
  home: Home(),
));