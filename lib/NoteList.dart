import 'package:flutter/material.dart';

class NoteListPage extends StatefulWidget {
  @override
  _NoteListPageState createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  int count = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To Do List Note',
          style: TextStyle(
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),

      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
		    onPressed: () {
		      debugPrint('FAB clicked');
          Navigator.of(context).pushReplacementNamed('/NoteDetail');
		    },

		    tooltip: 'Add Note',

		    child: new Icon(
          Icons.add,
          color: new Color(0xffFFFFFF)
        ),
	    ),
    );
  }
  ListView getNoteListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;


    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
							child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('Dummy Title', style: titleStyle,),
						subtitle: Text('Dummy Date'),
						trailing: Icon(Icons.delete, color: Colors.grey,),
						onTap: () {
							debugPrint("ListTile Tapped");
              Navigator.of(context).pushReplacementNamed('/NoteDetail');
						},
          ),
        );
      }
    );  
  }
}