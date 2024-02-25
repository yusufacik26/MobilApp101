import 'package:flutter/material.dart';

class WeightOnPlanetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hangi Gezegende Kaç kilosun',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/nice.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: WeightCalculator(),
        ),
      ),
    );
  }
}

class WeightCalculator extends StatefulWidget {
  @override
  _WeightCalculatorState createState() => _WeightCalculatorState();
}

class _WeightCalculatorState extends State<WeightCalculator> {
  final TextEditingController _weightController = TextEditingController();
  final Map<String, String> _planetImages = {
    'Merkür': 'assets/Merkür.png',
    'Venüs': 'assets/Venüs.png',
    'Dünya': 'assets/Dünya.png',
    'Mars': 'assets/Mars.png',
    'Jüpiter': 'assets/Jupiter.png',
    'Satürn': 'assets/Satürn.png',
    'Uranüs': 'assets/Uranüs.png',
    'Neptün': 'assets/Neptün.png',
  };
  final Map<String, double> _planetGravity = {
    'Merkür': 0.38,
    'Venüs': 0.91,
    'Dünya': 1.0,
    'Mars': 0.38,
    'Jüpiter': 2.34,
    'Satürn': 1.06,
    'Uranüs': 0.92,
    'Neptün': 1.19,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _weightController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Kilonuzu girin (kg)',
            labelStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white), // Girdiğimiz değerin font rengini beyaz olarak ayarladık
          onChanged: (value) {
            setState(() {});
          },
        ),
        SizedBox(height: 20),
        for (String planet in _planetGravity.keys)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Image.asset(
                  _planetImages[planet]!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Text(
                  '$planet: ${(double.parse(_weightController.text.isNotEmpty ? _weightController.text : "0") * _planetGravity[planet]!).toStringAsFixed(2)} kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WeightOnPlanetsPage(),
  ));
}
