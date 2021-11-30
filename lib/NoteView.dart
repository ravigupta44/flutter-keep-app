import 'package:flutter/material.dart';
import 'package:keep_notes_clone/colors.dart';
import 'EditNoteView.dart';

class NoteView extends StatefulWidget {
  const NoteView({ Key? key }) : super(key: key);

  @override
  _NoteViewState createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  String note =
      "THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        actions: [
          IconButton(
            splashRadius: 17,
            onPressed: () {}, 
            icon: Icon(Icons.push_pin_outlined)),
             IconButton(
            splashRadius: 17,
            onPressed: () {}, 
            icon: Icon(Icons.archive_outlined)),
            IconButton(
            splashRadius: 17,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteView()));
            }, 
            icon: Icon(Icons.edit_outlined))
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Text("HEADING" , style: TextStyle(color: Colors.white , fontSize: 23 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text(note,style: TextStyle(color: Colors.white),)
          ]
          
        ),
      ),
    );
  }
}