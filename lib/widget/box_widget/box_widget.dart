import 'package:flutter/material.dart';

class MyBox extends StatefulWidget {
  final String title;
  final String content;

  MyBox({required this.title, required this.content});

  @override
  _MyBoxState createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          this.isExpanded = !this.isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(widget.title),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.content),
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
