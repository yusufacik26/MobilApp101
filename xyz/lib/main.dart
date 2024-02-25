import 'package:flutter/material.dart';
import 'planetpage.dart';
import 'AstronotPage.dart'; // AstronotPage.dart dosyasını ekledim
import 'lightyearpage.dart';
import 'WeightOnPlanetsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // useMaterial3: true, // Bu özelliği Flutter 2.10 ve sonrasında kullanabilirsiniz
      ),
      home: MyHomePage(title: 'Galaksi Rehberi'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/yildiz.gif',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(height: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildOvalButtonWithImage(
                        'Dünyaya Benzeyen Gezegenler', 'assets/a.png', PlanetPage(), context),
                    buildOvalButtonWithImage(
                        'Dünya Astronotları', 'assets/gunes.png', AstronautsPage(), context), 
                    buildOvalButtonWithImage('Işık Yılı hesabı', 'assets/c.png', LightYearCalculatorPage(), context),
                    buildOvalButtonWithImage(
                        'Hangi Gezegende Kaç kilosun', 'assets/d.png', WeightOnPlanetsPage(), context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOvalButtonWithImage(
      String text, String imagePath, Widget page, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 40),
              backgroundColor: Color.fromARGB(157, 87, 98, 107),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
