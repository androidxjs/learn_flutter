import 'package:flutter/material.dart';
import 'package:learn_flutter/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation' ,
          onPressed: ()=>debugPrint('点击navigation按钮'),
        ),
        title: Text('flutter你好'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'serch' ,
            onPressed: ()=>debugPrint('点击search按钮'),
          ),
        ],
        elevation: 8.0,
      ),
      body:ListViewDemo(),
    );
  }

}
class ListViewDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 10.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }

}

