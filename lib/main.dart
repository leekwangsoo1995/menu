import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト一覧画面"),
      ),
      body:ListView(
          children: <Widget>[
            Card(
              child:ListTile(
                title:Text("hello")
              )
            ),
            Card(
                child:ListTile(
                    title:Text("hello2")
                )
            ),
            Card(
                child:ListTile(
                    title:Text("hello3")
                )
            ),
          ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
         final newListText= await Navigator.of(context).push(MaterialPageRoute(builder: (context) => TodoAddPage()));
         if(newListText != null){

         }
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class TodoAddPage extends StatefulWidget{
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  String _text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
      ),
      body:Container(
        padding: EdgeInsets.all(64),
        child:Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_text),
                TextFormField(
                  decoration: InputDecoration(labelText: '料理名を入力してください。'),
                ),
                ElevatedButton(
                  child: const Text('リスト追加'),
                  onPressed: () {
                    Navigator.of(context).pop(_text);
                  },
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child:Text("キャンセル"),
                ),
              ],
            ),
          ),

      )
    );
  }
}
