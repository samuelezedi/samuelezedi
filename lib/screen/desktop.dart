import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';

class DeskTopView extends StatelessWidget {
  final constraints;
  DeskTopView(this.constraints);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(children: <Widget>[
        Expanded(child: Container(
          width: constraints.biggest.width / 2,
                  child: ListView(
                    children: <Widget>[
                      Text(
                        "I'm a passionate Software Developer, with immense specialty in Flutter for Mobile and Web, PHP Laravel for Backend AS A Service. Also a Music Art Junkie and futurist",
                        style: TextStyle(color: Colors.black),
                      ),
                      LinkWell(
                        "I'm currently the CTO at https://pronoun.com.ng, a online startup educational platform for students in Nigeria.",
                        listOfNames: {
                          'https://pronoun.com.ng' : 'ProNoun',
                        },
                        linkStyle: TextStyle(color: Colors.green),
                      ),
                      LinkWell(
                        "I'm an aspiring tech leader, speaker and problem solver, I have written quiet a number of technical articles on medium and still writing."
                      ),
                      LinkWell(
                        "https://github.com/samuelezedi https://medium.com/@samuelezedi https://twitter.com/samuelezedi https://instagram.com/samuelezedi",
                        listOfNames: {
                          "https://github.com/samuelezedi" : "Github",
                          "https://medium.com/@samuelezedi" : "Medium",
                          "https://twitter.com/samuelezedi" : "Twitter",
                          "https://instagram.com/samuelezedi" : "Instagram"
                        },
                        linkStyle: TextStyle(color: Colors.green, decoration: TextDecoration.underline),
                      )
                    ],
                  ),
        ),),
        RichText(text: TextSpan(
          children: [
            TextSpan(text: "Samuel",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            TextSpan(text: "Ezedi",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))
          ]
          ),)
      ],),
    );
  }
}