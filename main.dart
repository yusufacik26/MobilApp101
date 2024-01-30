import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odev1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.library_add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.red,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            SizedBox(width: 8), // Buton ile başlık arasındaki boşluk
            Text('Yusuf Apps'),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top +
                    AppBar().preferredSize.height,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 30, bottom: 10),
                color: Colors.white,
                child: Text(
                  'Welcome to my first app',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              'Merhaba',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              'Hoşgeldin',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              print('TextButton pressed');
                            },
                            child: Text('Text Button'),
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              print('Second TextButton pressed');
                            },
                            child: Text('Button 2'),
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 1),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 30, bottom: 10),
                color: Colors.white,
                child: Text(
                  'AÇIKLAMA: Bu benim ilk mobil uygulama ödevim',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Butona tıklandığında yapılacak işlemler
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
