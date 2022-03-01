import 'package:flutter/material.dart';

class ViewNotes extends StatefulWidget {
  String title = "";
  String content = "";

  ViewNotes(this.title, this.content);
  @override
  State<ViewNotes> createState() => _ViewNotesState(this.title, this.content);
}

class _ViewNotesState extends State<ViewNotes> {
  String _title = "";
  String _content = "";

  _ViewNotesState(String title, String content) {
    this._title = title;
    this._content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Text(
            _content,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
