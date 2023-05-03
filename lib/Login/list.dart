import 'package:flutter/material.dart';


class list extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
appBar: 
AppBar(
elevation:0,
centerTitle:true,
automaticallyImplyLeading: false,
backgroundColor:Color(0xff3a57e8),
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
),
title:Text(
"Histórico",
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:20,
color:Color(0xffffffff),
),
),
leading: Icon(
Icons.arrow_back,
color:Color(0xffffffff),
size:24,
),
),
body:
ListView(
scrollDirection: Axis.vertical,
padding:EdgeInsets.all(16),
shrinkWrap:false,
physics:ScrollPhysics(), 
children:[

Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 20),
child:Container(
width:200,
height:30,
padding:EdgeInsets.symmetric(vertical: 4,horizontal:8),
decoration: BoxDecoration(
color:Color(0xffffffff),
border:Border.all(color: Color(0xff3a57e8) , width: 3),
borderRadius:BorderRadius.circular(0),
),
child:DropdownButtonHideUnderline(child:DropdownButton(
value:"Histórico de registros",
items:["Histórico de registros", "Registro de jornada"].map<DropdownMenuItem<String>>((String value) {
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
),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:
Stack(
alignment:Alignment.centerLeft,
children: [
Container(
alignment:Alignment.center,
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:130,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(60, 0, 10, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Text(
"03/05/2023",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 12),
child:Text(
"Remoto",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffd4d4d4),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Icon(
Icons.schedule,
color:Color(0xffd4d4d4),
size:20,
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"08:00",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
ImageIcon(
NetworkImage("https://cdn4.iconfinder.com/data/icons/various-forms-of-arrows/32/38__top_down_arrow_routes_directions_arrows_up-128.png"),
size:16,
color:Color(0xffd4d4d4),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"17:00",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
],),
],),),
),
],),),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:
Stack(
alignment:Alignment.centerLeft,
children: [
Container(
alignment:Alignment.center,
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:130,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(60, 0, 10, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Text(
"28/04/2023",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 12),
child:Text(
"Oficina Madrid",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffd4d4d4),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Icon(
Icons.schedule,
color:Color(0xffd4d4d4),
size:20,
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"08:05",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
ImageIcon(
NetworkImage("https://cdn4.iconfinder.com/data/icons/various-forms-of-arrows/32/38__top_down_arrow_routes_directions_arrows_up-128.png"),
size:16,
color:Color(0xffd4d4d4),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"15:10",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
],),
],),),
),
],),),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:
Stack(
alignment:Alignment.centerLeft,
children: [
Container(
alignment:Alignment.center,
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:130,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(60, 0, 10, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Text(
"27/04/2023",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 12),
child:Text(
"Remoto",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffd4d4d4),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Icon(
Icons.schedule,
color:Color(0xffd4d4d4),
size:20,
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"08:10",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
ImageIcon(
NetworkImage("https://cdn4.iconfinder.com/data/icons/various-forms-of-arrows/32/38__top_down_arrow_routes_directions_arrows_up-128.png"),
size:16,
color:Color(0xffd4d4d4),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"17:15",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
],),
],),),
),
],),),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:
Stack(
alignment:Alignment.centerLeft,
children: [
Container(
alignment:Alignment.center,
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:130,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(60, 0, 10, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Text(
"26/04/2023",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 12),
child:Text(
"Oficina Madrid",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffd4d4d4),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Icon(
Icons.location_on,
color:Color(0xffd4d4d4),
size:20,
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"08:30",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
ImageIcon(
NetworkImage("https://cdn4.iconfinder.com/data/icons/various-forms-of-arrows/32/38__top_down_arrow_routes_directions_arrows_up-128.png"),
size:16,
color:Color(0xffd4d4d4),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"17:30",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
],),
],),),
),
],),),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 0, 16),
child:
Stack(
alignment:Alignment.centerLeft,
children: [
Container(
alignment:Alignment.center,
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:MediaQuery.of(context).size.width,
height:130,
decoration: BoxDecoration(
color:Color(0xff3a57e8),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.circular(12.0),
),
child:
Padding(
padding:EdgeInsets.fromLTRB(60, 0, 10, 0),
child:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.start,
mainAxisSize:MainAxisSize.min,
children: [
Text(
"25/04/2023",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w700,
fontStyle:FontStyle.normal,
fontSize:18,
color:Color(0xffffffff),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 8, 0, 12),
child:Text(
"Oficina Madrid",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:16,
color:Color(0xffd4d4d4),
),
),
),
Row(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Icon(
Icons.location_on,
color:Color(0xffd4d4d4),
size:20,
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"08:00",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
ImageIcon(
NetworkImage("https://cdn4.iconfinder.com/data/icons/various-forms-of-arrows/32/38__top_down_arrow_routes_directions_arrows_up-128.png"),
size:16,
color:Color(0xffd4d4d4),
),
Expanded(
flex: 1,
child: Padding(
padding:EdgeInsets.fromLTRB(4, 0, 0, 0),
child:Text(
"17:15",
textAlign: TextAlign.start,
maxLines:1,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xffd4d4d4),
),
),
),
),
],),
],),),
),
],),),
],),
)
;}
}