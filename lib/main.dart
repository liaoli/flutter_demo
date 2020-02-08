
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
items: List<String>.generate(1000, (i)=>"item$i")
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<String > items;

  MyApp({key ,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: buildScaffoldListViewWithData(context,items));
  }

  //图片 widget 使用练习
  Scaffold buildScaffoldListViewWithData(BuildContext context,List<String> items) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: Center(
          child: Container(
            child:  ListView.builder(

              itemCount: items.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),//把插件抽取出来，一切接插件。精简代码，模块化。
          ),
        )
    );
  }



  //图片 widget 使用练习
  Scaffold buildScaffoldHorizontalListView() {
    return Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: Center(
          child: Container(
            child: MyListView(),//把插件抽取出来，一切接插件。精简代码，模块化。
            height: 200,
          ),
        )
    );
  }




  //图片 widget 使用练习
  Scaffold buildScaffoldListViewWithListWithImage() {
    return Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: ListView(
          children: <Widget>[
           Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581089711687&di=10bfee2b13cb972fbb4ce0d13926ffe3&imgtype=0&src=http%3A%2F%2Fimg.kutoo8.com%2Fupload%2Fimage%2F43278246%2Fleisineiyi%2520%25287%2529_960x540.jpg'),
           Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581099205027&di=b342c1b8d1a4200cfc1dcfaa3dec5314&imgtype=jpg&src=http%3A%2F%2Fwww.qiuxingwang.cn%2Fd%2Ffile%2Fphoto%2Fmnl%2F2016-10-05%2Fb2566fc2e6dde50176607a84ac545454.jpg'),
           Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581099213652&di=d50afff91bdd7f74d0f06216fe7dc930&imgtype=0&src=http%3A%2F%2Fwap.b585.com%2Fuploads%2Fsouju%2Fxg%2F201802%2F585125370030030371.jpg')
          ],
        )
    );
  }

  //图片 widget 使用练习
  Scaffold buildScaffoldListViewWithListTile() {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter')),
      body: ListView(
        children: <Widget>[
          new ListTile(
            leading:  Icon(Icons.access_time),
            title: Text("当前时间"),
            subtitle: Text("21:31"),
          ),
          new ListTile(
            leading:  Icon(Icons.person),
            title: Text("我的信息"),
            subtitle: Text("保密哦"),
          ),
          new ListTile(
            leading:  Icon(Icons.work),
            title: Text("工作内容"),
            subtitle: Text("你有5项工作待完成"),
          )
        ],
      )
    );
  }

  //图片 widget 使用练习
  Scaffold buildScaffoldImage() {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter')),
      body: Center(
        child: Container(
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581089711593&di=518f0ad00a030b83d145dcb5bdac215c&imgtype=0&src=http%3A%2F%2Fpic.feizl.com%2Fupload%2Fallimg%2F170614%2F0T24025A-0.jpg',
            scale: 2.0,

            fit:BoxFit.cover,

            color: Colors.blueAccent,

            colorBlendMode: BlendMode.difference,
          ),

          width: 720,
          height: 1080,
          color: Color.fromARGB(255, 23, 233, 222),
        ),
      ),
    );
  }

  //Container widget 使用练习
  Scaffold buildScaffoldContainer() {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter')),
      body: Center(
        child: Container(
          child: Text(
            "把酒问青天",
            style: TextStyle(fontSize: 30.0),
          ),
          alignment: Alignment.topLeft,
          //约束Container内部的元素的
//         width: 300,
          height: 400,
//         color: Color.fromARGB(177, 0, 144, 255),// decoration 和 背景Color不能同时设置，只能设置一个否则报错
          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(//装饰
            gradient: LinearGradient(//渐变
                colors: [Colors.pink, Colors.pinkAccent, Colors.purple]),
          ),
        ),
      ),
    );
  }

//text widget 使用练习
  Scaffold buildScaffoldText() {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter')),
      body: Center(
        child: Text(
          "在前面的介绍中，我们知道在Flutter中几乎所有的对象都是一个Widget。",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 0, 144, 144),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted),
        ),
      ),
    );
  }
}


class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,//指定滑动的方向，水平垂直
      children: <Widget>[

        Container(
          color: Colors.blue,
          width: 180,
        ),

        Container(
          color: Colors.purple,
          width: 180,
        ),
        Container(
          color: Colors.pinkAccent,
          width: 180,
        ),
      ],
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
