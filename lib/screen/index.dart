
import 'package:flutter/material.dart';
import 'desktop.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth > 1200) {
          //computers
          return DeskTopView(constraints);

        } else if (constraints.maxWidth > 805 && constraints.maxWidth < 1200) {
          //tablets
          // return TabletView();
        } else if (constraints.maxWidth > 400 && constraints.maxWidth < 805) {
          //tablets
          // return SmallTabletView();
        } else {
          //mobile views
          // retu/rn MobileView();
        }
        return Offstage();
      },
      );
  }
}