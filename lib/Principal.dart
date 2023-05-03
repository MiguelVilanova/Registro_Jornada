
import 'package:flutter/material.dart';



class registro extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:0,
centerTitle:false,
automaticallyImplyLeading: false,
backgroundColor:Color(0xff3a57e8),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"Registro de jornada",
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
leading: Icon(
Icons.arrow_back,
color:Color(0xffffffff),
size:24,
),
),
body:Align(
alignment:Alignment.center,
child:Padding(
padding:EdgeInsets.all(16),
child:SingleChildScrollView(
child:
Column(
mainAxisAlignment:MainAxisAlignment.center,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Container(
width:200,
height:30,
padding:EdgeInsets.symmetric(vertical: 4,horizontal:8),
decoration: BoxDecoration(
color:Color(0xffffffff),
border:Border.all(color: Color(0xff3a57e8) , width: 2),
borderRadius:BorderRadius.circular(0),
),
child:DropdownButtonHideUnderline(child:DropdownButton(
value:"Registro de jornada",
items:["Registro de jornada", "Histórico de registros"].map<DropdownMenuItem<String>>((String value) {
return DropdownMenuItem<String>(
value: value,
child: Text(value),);
}).toList(),style: TextStyle(
color:Color(0xff000000),
fontSize:16,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
), onChanged: (value){},
elevation:8,
isExpanded: true,),)
),
Padding(
padding:EdgeInsets.symmetric(vertical: 20,horizontal:0),
child:///***If you have exported images you must have to copy those images in assets/images directory.
Image(
image:AssetImage("assets/images/fichar2.PNG"),
height:100,
width:100,
fit:BoxFit.cover,
),
),
Padding(
padding:EdgeInsets.symmetric(vertical: 16,horizontal:0),
child:Text(
"Hora de entrada:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xff3a57e8),
),
),
),
Text(
"--:--",
textAlign: TextAlign.center,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 20, 0, 0),
child:Text(
"Hora de salida:",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:22,
color:Color(0xff3a57e8),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 20, 0, 0),
child:Text(
"--:--",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 40, 0, 30),
child:MaterialButton(
onPressed:(){},
color:Color(0xff3a57e8),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
side:BorderSide(color:Color(0xffffffff),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Registrar", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xffffffff),
height:40,
minWidth:140,
),
),
Padding(
padding:EdgeInsets.fromLTRB(50, 10, 30, 0),
child:Align(
alignment:Alignment.center,
child:
CheckboxListTile(
value:true,
title:Text(
"Trabajo remoto",
style: TextStyle(
fontWeight:FontWeight.w500,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff3a57e8),
),
textAlign:TextAlign.left,
),
tileColor:Color(0x00000000),
activeColor:Color(0xff3a57e8),
checkColor:Color(0xffffffff),
contentPadding:EdgeInsets.fromLTRB(0, 0, 10, 0),
onChanged:(value) {},
dense:true,
controlAffinity:ListTileControlAffinity.leading,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
selected:false,
selectedTileColor:Color(0x42000000),
),
),
),
],),),),),
)
;}
}

