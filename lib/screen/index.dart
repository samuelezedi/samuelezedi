
import 'package:flutter/material.dart';
import 'package:samuelezedi/screen/mobile.dart';
import 'package:samuelezedi/screen/tabletview.dart';
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
        if (constraints.maxWidth > 700) {
          //computers
          return DeskTopView(constraints);

        } else if (constraints.maxWidth > 350 && constraints.maxWidth < 700) {
          //tablets
          return TabletView(constraints);
        } else  {
          return MobileView(constraints);
        }
      },
      );
  }
}