import 'package:flutter/material.dart';
import 'package:keep_notes_clone/colors.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value  = true;
  bool newItemValue = true;
  bool checkedItemValue = true;
  bool richLinkValue = false;
  bool darkThemeValue =true;
  bool enableSharingValue = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(backgroundColor: bgColor,
      elevation: 0.0,
      title : Text("Settings")
      ),
      body: 
      Container(
        child: Column(
          children: [
            Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Sync" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: value, onChanged: (switchValue) {
            setState(() {
              
            this.value = switchValue;
            });
          }),)
        ],)
      ],),),


          Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Add new items to bottom" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: newItemValue, onChanged: (switchValue) {
            setState(() {
              
            this.newItemValue = switchValue;
            });
          }),)
        ],)
      ],),),


        Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Move checked items to bottom" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: checkedItemValue, onChanged: (switchValue) {
            setState(() {
              
            this.checkedItemValue = switchValue;
            });
          }),)
        ],)
      ],),),

      Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Diplay rich link previews" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: richLinkValue, onChanged: (switchValue) {
            setState(() {
              
            this.richLinkValue = switchValue;
            });
          }),)
        ],)
      ],),),


      Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Dark theme" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: darkThemeValue, onChanged: (switchValue) {
            setState(() {
              
            this.darkThemeValue = switchValue;
            });
          }),)
        ],)
      ],),),


      Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        Row(children: [
          Text("Enable sharing" ,style: TextStyle(color: Colors.white , fontSize: 18),),
          Spacer(),
          Transform.scale(scale: 1.3,
          child : Switch.adaptive(value: enableSharingValue, onChanged: (switchValue) {
            setState(() {
              
            this.enableSharingValue = switchValue;
            });
          }),)
        ],)
      ],),),

          ],
        ),
      )
      

      
    );
  }
}