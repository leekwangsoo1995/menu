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

            Text("hello"),
            Text("hello2"),
            Text("hello3"),
          ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage(),
              )
          );
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
      ),
      body:Center(
        child:TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child:Text("戻ります"),
        ),
      )
    );
  }
}
