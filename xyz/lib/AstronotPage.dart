import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astronotlar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AstronautsPage(),
    );
  }
}

class AstronautsPage extends StatelessWidget {
  final List<Map<String, String>> astronauts = [
    {
      'name': 'Alper Gezeravcı',
      'flagImage': 'assets/alper.webp',
      'info':
          'Hava Kuvvetleri Komutanlığında F-16 pilotu olarak görev yapan Gezeravcı, 1979 yılında Mersin\'de doğdu. 2001 yılında Hava Harp Okulu\'ndan elektronik mühendisi olarak mezun oldu. ABD Hava Kuvvetleri Teknoloji Enstitüsü\'nde harekat araştırması bölümünde yüksek lisans yaptı. 2023 yılında Milli Uzay Programı kapsamında uzay seyahatine seçildi. 17 Ocak 2024 tarihinde SpaceX\'in Crew Dragon uzay aracı ile Uluslararası Uzay İstasyonu\'na (UUİ) gidecek.',
    },
    {
      'name': 'Yuri Gagarin',
      'flagImage': 'assets/yuri.jpg',
      'info':
          'Yuri Gagarin, 9 Mart 1934\'te Rusya\'nın Gzhatsk kentinde doğdu. Sovyet hava kuvvetlerinde pilot olarak görev yaptıktan sonra, Sovyetler Birliği\'nin uzay programına katıldı. 12 Nisan 1961\'de Vostok 1 uzay aracıyla dünya yörüngesine giren ilk insan oldu. Gagarin\'in uzay seyahati sırasında dünya etrafında 108 dakika boyunca dolaştı. Bu tarihi olayın ardından, Gagarin dünya çapında bir kahraman haline geldi ve Sovyetler Birliği\'nin uzay programının sembol ismi oldu. Ne yazık ki, 27 yaşındayken 1968\'de bir eğitim uçuşu sırasında uçak kazasında hayatını kaybetti.',
    },
    {
      'name': 'Alan Shepard',
      'flagImage': 'assets/alan.jpg',
      'info':
          'Amerikalı astronot Alan Shepard, 18 Kasım 1923\'te New Hampshire\'da doğdu. II. Dünya Savaşı\'nda ABD Deniz Kuvvetleri\'nde savaştıktan sonra, NASA\'nın Mercury astronotları arasına seçildi. 5 Mayıs 1961\'de Mercury-Redstone 3 göreviyle Amerika Birleşik Devletleri\'nin ilk insanlı uzay uçuşunu gerçekleştirdi. Shepard\'in uzay yolculuğu 15 dakika sürdü ve yörüngeye girmemiş olsa da, bu olay Amerikan uzay programı için önemli bir kilometre taşıydı. Daha sonra 1971\'de Apollo 14 görevinde Ay\'a ayak basan altıncı insan oldu. Shepard, 1998\'de 74 yaşında vefat etti.',
    },
    {
      'name': 'John Glenn',
      'flagImage': 'assets/JohnGlenn.jpg',
      'info':
          'Amerikalı deniz subayı, havacı ve politikacı John Glenn, 18 Temmuz 1921\'de Ohio\'da doğdu. II. Dünya Savaşı ve Kore Savaşı\'nda savaştıktan sonra, ABD Deniz Kuvvetleri\'nde test pilotu olarak görev yaptı. 20 Şubat 1962\'de Friendship 7 göreviyle Mercury-Atlas 6 roketiyle yörüngeye giren ilk Amerikalı oldu. Glenn\'in uzay yolculuğu 4 saat 55 dakika sürdü ve dünya yörüngesinde üç tam tur attı. Daha sonra 1998\'de 77 yaşında, uzaydaki en yaşlı insan olarak Atlantis Uzay Mekiği\'yle tekrar uzaya gitti. 2016\'da 95 yaşında hayatını kaybetti.',
    },
    {
      'name': 'Valentina Tereshkova',
      'flagImage': 'assets/Valentina.jpg',
      'info':
          'Sovyet kozmonot Valentina Tereshkova, 6 Mart 1937\'de Rusya\'nın Yaroslavl Oblastı\'nda doğdu. Tekstil işçisi olan Tereshkova, 1961\'de Sovyetler Birliği\'nin kadın kozmonot adayı seçildi. 16 Haziran 1963\'te Vostok 6 misyonuyla dünya yörüngesine giren ilk kadın oldu. Tereshkova\'nın uzay seyahati, 70 saat sürdü ve 48 tur attı. Uzayda geçirdiği süre boyunca, insanın uzaydaki fizyolojik tepkilerini incelemek için bir dizi deney gerçekleştirdi. Daha sonra aktif politikaya atılarak Sovyet parlamentosunda görev aldı.',
    },
    {
      'name': 'Neil Armstrong',
      'flagImage': 'assets/neil.jpg',
      'info':
          'Amerikalı astronot Neil Armstrong, 5 Ağustos 1930\'da Ohio\'da doğdu. Amerikan Donanması\'nda hizmet veren Armstrong, sonradan NASA\'nın Astronot Koruması Ofisi\'ne katıldı ve sonunda astronot seçildi. 20 Temmuz 1969\'da Apollo 11 görevi sırasında Ay\'a ilk ayak basan insan olarak tarihe geçti. Armstrong, Apollo 11\'in komutanı olarak Ay yüzeyine inen ilk kişi oldu ve unutulmaz sözleri "Bir küçük adım insan, ama bir büyük sıçrama insanlık için" ile Ay yüzeyinde yürüdü. Armstrong, insanlık tarihindeki en önemli keşiflerden birine liderlik ettiği için ölümüne kadar saygı ve hayranlık gördü. 2012 yılında 82 yaşında hayatını kaybetti.',
    },
    {
      'name': 'Yang Liwei',
      'flagImage': 'assets/yang.jpg',
      'info':
          'Yang Liwei, 21 Haziran 1965\'te Liaoning, Çin\'de doğdu. Çin Halk Kurtuluş Ordusu Hava Kuvvetleri\'nde avcı pilotu olarak görev yaptıktan sonra, 1998 yılında Çin\'in ilk insanlı uzay uçuşu olan Shenzhou 5 göreviyle uzaya giden ilk Çinli astronot oldu. Görevi sırasında dünya yörüngesinde 21 saat geçirdi. Yang, Çin\'de milli bir kahraman olarak kabul edilir.',
    },
    {
      'name': 'Thomas Pesquet',
      'flagImage': 'assets/thomas.jpg',
      'info':
          'Thomas Pesquet, 27 Şubat 1978\'de Fransa\'nın Rouen şehrinde doğdu. Fransız Havacılık ve Uzay Ajansı\'nın (CNES) seçtiği bir astronot olan Pesquet, 2016 yılında ESA\'nın (Avrupa Uzay Ajansı) 50. uzay görevi olan Proxima misyonu kapsamında uzaya gitti. Uzayda altı ay geçirdikten sonra, 2021\'de Crew-2 misyonuyla tekrar Uluslararası Uzay İstasyonu\'na gitti.',
    },
    {
      'name': 'Alexander Gerst',
      'flagImage': 'assets/gerst.jpg',
      'info':
          'Alexander Gerst, 3 Mayıs 1976\'da Almanya\'nın Künzelsau şehrinde doğdu. Alman Havacılık ve Uzay Merkezi (DLR) tarafından seçilen bir astronot olan Gerst, 2014 ve 2018 yıllarında iki uzay görevi gerçekleştirdi. İlk görevinde, Uluslararası Uzay İstasyonu\'nda altı ay geçirdi ve ikinci görevinde, uzayda 196 gün boyunca kaldı. Gerst, uzayda bilimsel araştırmalar ve deneyler yürüttü.',
    },
    {
      'name': 'Koichi Wakata',
      'flagImage': 'assets/Wakata.webp',
      'info':
          'Koichi Wakata, 1 Ağustos 1963\'te Saitama, Japonya\'da doğdu. Japon Uzay Ajansı (JAXA) tarafından seçilen bir astronot olan Wakata, beş uzay görevine katıldı. 2009 yılında Uluslararası Uzay İstasyonu\'na (ISS) kısa süreli bir ziyaret yaptı ve ISS\'nin Japon laboratuvarı Kibo\'nun ilk modülünü teslim etti. 2014-2015 yıllarında ise ISS\'de altı aylık bir görevde bulundu ve Japonya\'nın uzaydaki en uzun süre görev yapan astronotu oldu.',
    },
    {
      'name': 'Rakesh Sharma',
      'flagImage': 'assets/rakesh.jpg',
      'info':
          'Rakesh Sharma, 13 Ocak 1949\'da Patiala, Hindistan\'da doğdu. Hindistan Hava Kuvvetleri\'nde pilot olarak görev yaptıktan sonra, 1984 yılında Sovyetler Birliği\'nin Soyuz T-11 uzay aracıyla uzaya giden ilk Hindistanlı astronot oldu. Sharma, Hindistan\'dan uzaya giden ilk ve tek kişidir ve Hindistan\'da ulusal bir kahraman olarak kabul edilir. Uzay görevi sırasında, Hindistan\'dan canlı olarak iletişim kurdu ve ünlü "Saare Jahan Se Achha" (Tüm dünyalardan daha güzel) şiirini okudu.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dünya Astronotları'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/solar.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: astronauts.length,
          itemBuilder: (context, index) {
            return AstronautButton(
              name: astronauts[index]['name']!,
              flagImage: astronauts[index]['flagImage']!,
              info: astronauts[index]['info']!,
            );
          },
        ),
      ),
    );
  }
}

class AstronautButton extends StatelessWidget {
  final String name;
  final String flagImage;
  final String info;

  const AstronautButton({
    required this.name,
    required this.flagImage,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AstronautDetailPage(
                name: name,
                flagImage: flagImage,
                info: info,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(
                flagImage,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AstronautDetailPage extends StatelessWidget {
  final String name;
  final String flagImage;
  final String info;

  const AstronautDetailPage({
    required this.name,
    required this.flagImage,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/atom.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  flagImage,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                info,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
