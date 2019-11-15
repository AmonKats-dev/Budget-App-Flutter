import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/listOfDistricts': (context) => ListOfDistricts(),
          '/listOfSubcounties': (context) => SubCounty(),
          '/summary': (context) => PDFSummary(),
        });
  }
}

class PDFSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Budget Summary'),
      ),
      body: loadFromAsset(),
    );
  }

  PDFDocument pdfDocument;
  loadFromAsset() async {
    pdfDocument =
        await PDFDocument.fromAsset('assets/short_summary_dzaipi.pdf');
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Center(child: Text('UG Budget')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: new Container(
                  child: Image(
                    image: AssetImage('images/brands_logo.jpg'),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    'Budget Policy and Evaluation Department',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),
            new SizedBox(
                width: 300.0,
                height: 60.0,
                child: new FlatButton(
                  child: Text(
                    'KNOW YOUR BUDGET',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  color: Color(0xFF18D191),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/listOfDistricts');
                  },
                ))
          ],
        ),
      ),
    );
  }
}

class ListOfDistricts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Government'),
      ),
      body: data(),
    );
  }

  data() {
    final countries = [
      'Adjumani',
      'Apac',
      'Arua',
      'Bukomansimbi',
      'Bugiri',
      'Bundibugyo',
      'Bushenyi',
      'Busia',
      'Gulu',
      'Hoima',
      'Iganga',
      'Jinja',
      'Kabale',
      'Kabarole',
      'Kaberamaido',
      'Kalangala',
      'Kamuli',
      'Kamwenge',
      'Kanungu',
      'Kapchorwa',
      'Kasese',
      'Katakwi',
      'Kayunga',
      'Kibaale',
      'Kiboga',
      'Kisoro'
    ];

    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 1.0))),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(countries[index]),
                Image(
                  image: AssetImage('images/next_arrow.png'),
                  color: Colors.grey,
                ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/listOfSubcounties');
            },
          ),
        );
      },
    );
  }
}

class SubCounty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Sub-County'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => EntryItem(
          data[index],
        ),
      ),
    );
  }
}

class Entry {
  final String title;
  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
    'Dzaipi',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Arinyapi',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Ukusijoni',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Adropi',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Ofua',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Ciforo',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Pacara',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Pakele',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Adjumani TC',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
  Entry(
    'Itirikwa',
    <Entry>[
      Entry(
        'FY 2018/19',
        <Entry>[
          Entry('Budget Summary'),
          Entry('Health'),
          Entry('Schools'),
        ],
      ),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  BuildContext get context => null;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
        onTap: () {
          Navigator.pushNamed(context, '/summary');
        },
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildTiles(entry);
  }
}

/*class SubCounty2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub-County'),
      ),
      body: data(),
    );
  }

  */ /*data() {
    final counties = [
      'Dzaipi',
      'Arinyapi',
      'Ukusijoni',
      'Adropi',
      'Ofua',
      'Ciforo',
      'Pacara',
      'Pakele',
      'Adjumani TC',
      'Itirikwa',
    ];

    return ListView.builder(
      itemCount: counties.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 1.0))),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(counties[index]),
                Image(
                  image: AssetImage('images/next_arrow.png'),
                  color: Colors.grey,
                ),
              ],
            ),
            onTap: () {
              //Navigator.pushNamed(context, '/listOfSubcounties');
            },
          ),
        );
      },
    );
  }
}*/
