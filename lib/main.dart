import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MSD',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'MSD'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.apps,
              size: 40.0,
            ),
          ),
          Expanded(
            flex: 5,
            child: Image(
              image: NetworkImage(
                  'https://images.hindi.news18.com/ibnkhabar/uploads/459x306/jpg/2019/08/MS-Dhoni_16c1918e33b_large-1.jpg'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Mahendra Singh Dhoni',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 3.0,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.alternate_email,
                size: 20.0,
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}
