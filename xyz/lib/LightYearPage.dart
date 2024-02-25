import 'package:flutter/material.dart';

void main() {
  runApp(LightYearCalculator());
}

class LightYearCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light Year Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LightYearCalculatorPage(),
    );
  }
}

class LightYearCalculatorPage extends StatefulWidget {
  @override
  _LightYearCalculatorPageState createState() =>
      _LightYearCalculatorPageState();
}

class _LightYearCalculatorPageState extends State<LightYearCalculatorPage> {
  TextEditingController _yearController = TextEditingController();
  double _result = 0;

  void _calculateLightYears() {
    setState(() {
      int year = int.tryParse(_yearController.text) ?? 0;
      // Işık hızı: 299,792,458 m/s
      double lightYear = year * 299792458;
      // Bir ışık yılı, ışığın bir yıl içinde katettiği mesafedir.
      _result = lightYear / 1000 / 1000 / 1000 / 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Işık Yılı hesabı',
          style: TextStyle(color: Color.fromARGB(255, 248, 248, 248)),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white, // Geri tuşunu beyaz olarak ayarladık
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/isikyili.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _yearController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Bir yıl değeri giriniz',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _calculateLightYears,
                  child: Text('Hesapla', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(158, 128, 138, 145)),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Sonuç: $_result ışık yılı',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
