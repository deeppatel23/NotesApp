import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> title = [
    "Note 1",
    "Note 2",
    "Note 3",
    "Note 4",
    "Note 5",
    "Note 6",
    "Note 7",
    "Note 8",
    "Note 9",
    "Note 10"
  ];
  List<String> description = [
    "Description of Note 1",
    "Description of Note 2",
    "Description of Note 3",
    "Description of Note 4",
    "Description of Note 5",
    "Description of Note 6",
    "Description of Note 7",
    "Description of Note 8",
    "Description of Note 9",
    "Description of Note 10"
  ];
  void _iconPressed() {
    print("Setting");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.settings), onPressed: _iconPressed),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 6,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                          leading: CircleAvatar(
                            child: Text(index.toString()),
                            backgroundColor: Colors.blue,
                          ),
                          title: Text(title[index]),
                          subtitle: Text(description[index]),
                          trailing: Icon(
                            Icons.delete,
                            color: Color.fromARGB(255, 245, 102, 91),
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
