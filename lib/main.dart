import 'package:flutter/material.dart';
import 'package:work6/card.dart';
import 'package:flutter/services.dart';
import 'package:work6/fondo.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage>  {
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
          return new Scaffold(
              body:ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          height:MediaQuery.of(context).size.height/1.01,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/fondo1.jpg') , fit: BoxFit.cover)
                          ),
                        ),
                      Column(
                       children: <Widget>[
                         //-------------------------Iconos de la parte de arriba------------------
                         Padding(
                           padding:EdgeInsets.only(top:15.0 ,left: 15.0,right: 15.0) ,
                           child: Column(
                             children: <Widget>[
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Icon(Icons.keyboard_arrow_left , size: 30.0, color: Colors.white,),
                                   Icon(Icons.search, size: 30.0, color: Colors.white,)
                                 ],
                               )
                             ],
                           ),
                         ),
                         //--------------------------------------------------------

                         SizedBox(
                           height:MediaQuery.of(context).size.height/3.8,
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           height: MediaQuery.of(context).size.height/10,
                           margin : EdgeInsets.only(bottom: 35.0) ,
                           child: Center(
                             child:Column(
                               children: <Widget>[
                                 Row(

                                   children: <Widget>[
                                     Text('Osmar Valenzuela' , style: TextStyle(fontFamily: 'Comfortaa' , fontSize: 20.0 , fontWeight: FontWeight.w600 , color: Colors.white),),
                                     SizedBox(width: 3.0,),
                                     Icon(Icons.beenhere , size: 15.0 ,color: Colors.white,)
                                   ],
                                   mainAxisAlignment: MainAxisAlignment.center,
                                 ),
                                 Text('128k fans', style: TextStyle(fontFamily: 'Comfortaa' , fontSize: 11.0 , fontWeight: FontWeight.w600 , color: Colors.white), )
                               ],
                             )
                           ),
                         ),
                         SizedBox(
                           height:MediaQuery.of(context).size.height/100.2,
                         ),
                         Stack(
                           children: <Widget>[
                             Container(
                               width: MediaQuery.of(context).size.width,
                               height: MediaQuery.of(context).size.height/1.910,
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.only(topRight: Radius.circular(45.0) , topLeft: Radius.circular(45.0))
                               ),
                             ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: Center(
                                      child:Column(
                                        children: <Widget>[
                                          Text('Photos & Videos' , style: TextStyle(fontFamily: 'Muli' , fontSize: 20.0 , fontWeight: FontWeight.bold, color: Color(getColorHexFromStr('#820933'))),),
                                          Text('269 shots' , style: TextStyle(fontFamily: 'Muli' , fontSize: 12.0 , fontWeight: FontWeight.w700 , color: Colors.grey.withOpacity(0.8)),)
                                        ],
                                      )
                                  ),
                                ),
                                SizedBox(
                                  height:MediaQuery.of(context).size.height/50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                      GestureDetector(
                                        child: Container(
                                          height: MediaQuery.of(context).size.height/2.5,
                                          width: MediaQuery.of(context).size.width/2.3,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                                              color: Colors.redAccent,
                                              image: DecorationImage(image: AssetImage('images/fondo5.jpg') , fit: BoxFit.cover)
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Fondo('images/fondo5.jpg' , Colors.white)));
                                        },
                                      ),
                                    SizedBox(width: 15.0,),
                                    Column(
                                      children: <Widget>[
                                       GestureDetector(

                                         child:  Container(
                                           height: MediaQuery.of(context).size.height/5.2,
                                           width: MediaQuery.of(context).size.width/2.3,
                                           decoration: BoxDecoration(
                                               borderRadius: BorderRadius.only(topRight: Radius.circular(30.0)),
                                               color: Colors.deepPurple,
                                               image: DecorationImage(image: AssetImage('images/fondo3.jpg') , fit: BoxFit.cover)
                                           ),
                                         ),
                                         onTap: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => Fondo('images/fondo3.jpg', Colors.black)));
                                         },
                                       ),
                                        SizedBox(height:10.0 ,),
                                       GestureDetector(

                                         child:  Container(
                                           height: MediaQuery.of(context).size.height/5.2,
                                           width: MediaQuery.of(context).size.width/2.3,
                                           decoration: BoxDecoration(
                                               borderRadius: BorderRadius.only(topRight: Radius.circular(30.0)),
                                               color: Colors.deepPurple,
                                               image: DecorationImage(image: AssetImage('images/fondo4.jpg') , fit: BoxFit.cover)
                                           ),
                                         ),
                                         onTap: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => Fondo('images/fondo4.jpg', Colors.white)));
                                         },
                                       )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                           ],
                         )

                       ],
                     ),



                    ],
                  )
                ],
              )
          );
        }
    );

  }

}