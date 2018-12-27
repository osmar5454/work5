import 'package:flutter/material.dart';
import 'package:work6/card.dart';
import 'package:flutter/services.dart';

class Fondo extends StatelessWidget {
  final String imagen ;
  final Color color ;
  const Fondo( this.imagen , this.color);

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
  @override
  Widget build(BuildContext context) {
    return  new OrientationBuilder(
        builder: (BuildContext context, Orientation orientation){
          if (orientation == Orientation.landscape) {
            SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
          } else {
            SystemChrome.setEnabledSystemUIOverlays([]);
          }
          return Scaffold(
            body:Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imagen) , fit: BoxFit.cover)
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 15.0 , top: 15.0) ,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height : 40.0,
                        child: IconButton(icon: Icon(Icons.close , size: 35.0,color: color.withOpacity(0.7),), onPressed: (){
                          Navigator.pop(context);
                        }),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/5,),
                    Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white , spreadRadius: 0.2 , blurRadius: 5.0
                          )
                        ]
                      ),
                      width: MediaQuery.of(context).size.width/1.2,
                      height: MediaQuery.of(context).size.height/6,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width/1.3,
                            height: MediaQuery.of(context).size.height/25,
                            child: Text('Organizer' , style: TextStyle(fontFamily: 'Merriweather' , fontWeight: FontWeight.w600 , fontSize: 19.0 , color: Colors.black),),
                            margin: EdgeInsets.only(top: 15.0 , left: 15.0),
                          ) ,
                          Container(
                            width: MediaQuery.of(context).size.width/1.4,
                            height: 1.0,
                            color: Colors.grey.withOpacity(0.4)
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(image: AssetImage(imagen) ,fit: BoxFit.cover)
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Column(
                                children: <Widget>[
                                  Text('Osmar Valenzuela' ,  style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w400 , fontSize: 15.0 , color: Colors.black),),
                                  Text('27 mensajes                  ' ,textAlign: TextAlign.start ,  style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w400 , fontSize: 12.0 , color: Colors.black.withOpacity(0.4)),)
                                ],
                              ),
                              SizedBox(width: 10.0,),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                  color: Color(getColorHexFromStr('#7BF776')),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(getColorHexFromStr('#7BF776')) , spreadRadius: 0.5 , blurRadius: 2.0
                                    )
                                  ]
                                ),
                                child: Icon(Icons.phone , color: Colors.white, size: 25.0,),
                              ),
                              SizedBox(width: 6.0,),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(getColorHexFromStr('#5B3FAA')),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(getColorHexFromStr('#5B3FAA')) , spreadRadius: 0.5 , blurRadius: 2.0
                                      )
                                    ]
                                ),
                                child: Icon(Icons.mail_outline , color: Colors.white, size: 25.0,),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height/2.5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: MediaQuery.of(context).size.height/10,
                      margin: EdgeInsets.only(top: 15.0 , ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(getColorHexFromStr('#1C0C38')),
                        boxShadow: [
                          BoxShadow(
                            color: Color(getColorHexFromStr('#1C0C38')) , spreadRadius: 0.5 ,blurRadius: 5.0,
                          )
                        ]
                      ),
                      child: Row(

                        children: <Widget>[
                          Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                image: DecorationImage(image: AssetImage(imagen) ,fit: BoxFit.cover)
                            ),
                          ),

                          SizedBox(width: 10.0,),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 22.0,),
                              Text('Swimming Lesons' ,  style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w400 , fontSize: 15.0 , color: Colors.white),),
                              Text('Bondi Beach, Australia' ,textAlign: TextAlign.start ,  style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w400 , fontSize: 12.0 , color: Colors.white.withOpacity(0.4)),)
                            ],
                          ),
                          SizedBox(width: 80.0,),
                          Container(
                            child: Icon(Icons.keyboard_arrow_down , size: 20.0, color: Colors.white,),
                          )


                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    )



                  ],
                )
              ],
            )
          );

        }
    );
  }
}

