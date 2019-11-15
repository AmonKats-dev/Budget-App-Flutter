import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _pushSaved() {
      Navigator.of(context).push(
        new MaterialPageRoute(builder: (context) {
          return new Scaffold(
            appBar: AppBar(
              title: new Text('List of districts'),
            ),
            body: data(),
            //body: new ListView(),
          );
        }),
      );
    }

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
                child: new RaisedButton(
                  child: Text(
                    'KNOW YOUR BUDGET',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  color: Color(0xFF18D191),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: _pushSaved,
                ))
          ],
        ),
      ),
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
                  image: AssetImage('images/right_arrow.png'),
                  color: Colors.grey,
                ),
              ],
            ),
            onTap: () {},
          ),
        );
      },
      /*separatorBuilder: (context, index) {
        return Divider();
      },*/
    );
  }
}
