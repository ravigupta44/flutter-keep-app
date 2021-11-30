import 'package:flutter/material.dart';
import 'colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({ Key? key }) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(color: white.withOpacity(0.1)),
          child: Row(
            children: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_outlined) , color: white, ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Search Your Notes",
                    hintStyle:
                        TextStyle(color: white.withOpacity(0.5), fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ))
    );
  }
}