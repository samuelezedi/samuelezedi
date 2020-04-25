import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';

class MobileView extends StatelessWidget {
  final constraints;
  MobileView(this.constraints);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(17),
        padding: EdgeInsets.only(left: 15,right: 15,top: 15, bottom: 0),
        child: Column(children: <Widget>[
          Expanded(child: Container(
            child: SingleChildScrollView(
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: constraints.biggest.width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "I'm a passionate Software Developer, with immense specialty in Flutter for Mobile and Web, PHP Laravel for Backend AS A Service. Also a Music Art junkie and futurist.",
                                  style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'Product Sans'),
                                ),
                                SizedBox(height: 20,),
                                LinkWell(
                                  "I'm currently the CTO at https://pronoun.com.ng an online educational platform for NOUN students, and also a founding partner at https://cubiclab.net, a software developement company in Nigeria.",
                                  listOfNames: {
                                    'https://pronoun.com.ng' : 'ProNoun',
                                    'https://cubiclab.net' : 'CubicLab'
                                  },
                                  linkStyle: TextStyle(fontSize: 15 , color: Colors.green,fontFamily: 'Product Sans'),
                                ),
                                SizedBox(height: 20,),
                                LinkWell(
                                  "I'm an aspiring tech leader, speaker and problem solver, I have written quiet a number of technical articles on medium and still writing."
                                ),
                                SizedBox(height: 20,),
                                LinkWell(
                                  "https://github.com/samuelezedi https://medium.com/@samuelezedi https://twitter.com/samuelezedi https://instagram.com/samuelezedi",
                                  listOfNames: {
                                    "https://github.com/samuelezedi" : "Github",
                                    "https://medium.com/@samuelezedi" : "Medium",
                                    "https://twitter.com/samuelezedi" : "Twitter",
                                    "https://instagram.com/samuelezedi" : "Instagram"
                                  },
                                  linkStyle: TextStyle(fontSize: 15,color: Colors.green,fontFamily: 'Product Sans', decoration: TextDecoration.underline),
                                ),
                                SizedBox(height: 20,),
                              ],
                            ),
                  ),

                  Container(
                    width: constraints.biggest.width / 3,
                    child: Image.asset('images/me.jpeg',width:160)
                  ),
                ],
              ),
            ),
          ),),
          Container(
            width: double.infinity,
            child: FittedBox(

            
              fit: BoxFit.contain,
                child: RichText(text: TextSpan(              
                children: [
                  TextSpan(text: "Samuel ",style: TextStyle(color: Colors.black.withOpacity(0.8),fontFamily: 'Product Sans',fontWeight: FontWeight.w100)),
                  TextSpan(text: "Ezedi",style: TextStyle(color: Colors.black.withOpacity(0.8), fontFamily: 'Product Sans', fontWeight: FontWeight.bold))
                ]
                ),),
            ),
          )
        ],),
      ),
    );
  }
}