import 'package:flutter/material.dart';

Widget carta(BuildContext context ,String color,String nombre ,String poder,String imagen,Color colorTexto){
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
  
  
  return  Container(
    width: 400.0,
    height: 275.0,
    color: Colors.transparent,
    child: Stack(
      children: <Widget>[

        Positioned(
          top: 46.0,
          left: 10.0,
          child: Row(
            children: <Widget>[
              Text('Rates', style: TextStyle(fontFamily: 'Pacifico', fontSize: 13.0 , color: Color(getColorHexFromStr('#F9622F')) ,fontWeight: FontWeight.w500  ),),
              SizedBox(width: 3.0,),
              Icon(Icons.star , size: 13.0, color: Colors.black,),
              Icon(Icons.star , size: 13.0, color: Colors.black,),
              Icon(Icons.star , size: 13.0, color: Colors.black,),
              Icon(Icons.star_half , size: 13.0, color: Colors.black,),
              Icon(Icons.star_border , size: 13.0, color: Colors.black,),

            ],
          )
        ),


        Padding(
          padding: EdgeInsets.only(left: 5.0 , right: 20.0,top: 70.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(getColorHexFromStr(color))
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(getColorHexFromStr(color)),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(getColorHexFromStr(color))   , blurRadius: 6.0,
                    )
                  ]
              ),
            ),
          ),
        ),



        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 170.0 , top: 80.0),
              width: 200.0,
              height: 10.0,
              child: Text(nombre , style: TextStyle(fontFamily: 'Muli' ,fontWeight: FontWeight.w600 , fontSize: 25.0 ,color: colorTexto )),
            ),
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 15.0),
                  width: 165.0,
                  height: 90.0,
                  child: Text(poder,style: TextStyle(color: colorTexto ,fontSize: 10.5, fontFamily: 'Muli'  ),),
                ),
              ],
            ),
            SizedBox(height: 3.0,),
            Container(
              margin: EdgeInsets.only(right: 175.0, top: 10.0),
              padding: EdgeInsets.only(top: 2.0  , right: 125.0),
              color: Colors.transparent,
              width: 195.0,
              height: 15.0,
              child: Column(
                children: <Widget>[
                  Text('Comments   (24)' ,style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w500 , fontSize:  9.0 , color: colorTexto),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 170.0, top: 0.0 , left:  13.0),
              padding: EdgeInsets.only(top: 2.0  , right: 80.0),
              color: Colors.transparent,
              width: 220.0,
              height: 15.0,
              child: Row(
                children: <Widget>[
                  Text('BY' ,style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w500 , fontSize:  9.0 , color: colorTexto),),
                  Text(' Osmar' ,style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w500 , fontSize:  9.0 , color: colorTexto),),
                  Text(' Valenzuela' ,style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w500 , fontSize:  9.0 , color: colorTexto),),
                  Text(' Mendoza' ,style: TextStyle(fontFamily: 'Muli' , fontWeight: FontWeight.w500 , fontSize:  9.0 , color: colorTexto),),


                ],
              ),
            ),
          ],
        ),


        Positioned(
          left: 170.0,
          top: 0.0,
          bottom: 60.0,
          child: Container(

            width: 250.0,
            height: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagen)),
              color: Colors.transparent,
            ),
          ),
        ),


      ],
    ),
  );
}