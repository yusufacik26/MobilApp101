import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PlanetPage(),
  ));
}

class PlanetPage extends StatelessWidget {
  final List<Map<String, String>> planets = [
    {
      'name': 'Kepler-452b',
      'imagePath': 'assets/kepler-452b-4.webp',
      'description':
          'Bu gezegen, Dünya\'ya oldukça benzer bir şekilde Güneş benzeri bir yıldız olan Kepler-452 etrafında döner. Dünya\'dan sadece 1.5 kat daha büyük olan Kepler-452b, yörüngesinin yıldızına olan uzaklığı bakımından "yaşanabilir bölge"de bulunur. Bu gezegen, Güneş Sistemi\'nden uzakta bulunan ve Dünya\'nın benzeri olabilecek bir yerin potansiyel bir örneği olabilir.'
    },
    {
      'name': 'Teegarden b ve c',
      'imagePath': 'assets/teegarden-b-ve-teegarden-c-gezegenleri.jpg',
      'description':
          'Teegarden b ve c, Dünya\'ya benzer özelliklere sahip iki gezegendir. Bu gezegenler, Teegarden yıldızı etrafında dönerler ve Dünya\'dan yaklaşık 12.5 ışık yılı uzaklıktadırlar. İkisi de yaşanabilir bölgede bulunur ve potansiyel olarak sıvı su içerebilirler.'
    },
    {
      'name': 'TRAPPIST-1d, e ve f',
      'imagePath': 'assets/TRAPPIST-1d, e.jpg',
      'description':
          'TRAPPIST-1 sistemine ait olan bu üç gezegen, yaşanabilir bölgede bulunur ve Dünya\'ya benzer özellikler gösterebilir. Bu gezegenler, Güneş Sistemi\'nden yaklaşık 39 ışık yılı uzaklıktadır.'
    },
    {
      'name': 'Gliese 581g',
      'imagePath': 'assets/Gliese_581_G.webp',
      'description':
          'Gliese 581g, Gliese 581 yıldızının etrafında dönen bir gezegendir. Bu gezegen, yaşanabilir bölgede bulunur ve Dünya\'dan yaklaşık 20.3 ışık yılı uzaklıktadır. Ancak, Gliese 581g\'nin varlığı ve özellikleri hala tartışmalıdır, bazı araştırmalar bu gezegenin varlığını reddetmiştir.'
    },
    {
      'name': 'HD 85512 b',
      'imagePath': 'assets/HD 85512 b.jpg',
      'description':
          'HD 85512 b, HD 85512 yıldızının etrafında dönen bir süper Dünya gezegenidir. Bu gezegen, yaşanabilir bölgede bulunur ve Dünya\'dan yaklaşık 36 ışık yılı uzaklıktadır. Potansiyel olarak sıvı su içerebilecek bir atmosfere sahip olabilir.'
    },
    {
      'name': 'Kapteyn b',
      'imagePath': 'assets/KapteynB(1).jpg',
      'description':
          'Kapteyn b, Kapteyn yıldızının etrafında dönen bir gezegendir. Bu gezegen, Dünya\'dan yaklaşık 13 ışık yılı uzaklıktadır. Kapteyn b\'nin yaşanabilir bölgesinde olup olmadığı tam olarak bilinmemekle birlikte, Dünya\'ya benzer özelliklere sahip olabileceği düşünülmektedir.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dünyaya Benzeyen Gezegenler'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/planet.gif', // Arka plan resmi
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ListView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) {
                return PlanetButton(
                  name: planets[index]['name']!,
                  imagePath: planets[index]['imagePath']!,
                  description: planets[index]['description']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlanetButton extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const PlanetButton({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Şeffaf arka plan rengi
          borderRadius: BorderRadius.circular(10), // Köşeleri yuvarla
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlanetDetailPage(
                  name: name,
                  imagePath: imagePath,
                  description: description,
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white, // Beyaz yazı rengi
                fontSize: 16, // Yazı boyutu
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlanetDetailPage extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;

  const PlanetDetailPage({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/uzay.gif', // Arka plan resmi olarak uzay.gif
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white, // Beyaz yazı rengi
                  fontSize: 16, // Yazı boyutu
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
