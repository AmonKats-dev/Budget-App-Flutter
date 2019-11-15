import 'package:budget_app/utils/Districts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List<District> _districts;

  HomeScreenState() {
    _districts = Districts.intializeDistricts().getDistricts;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Districts'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
          itemCount: _districts.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 1.0))),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_districts[index].getTitle),
                  ],
                ),
                onTap: () {},
              ),
            );
          }),
    );
  }
}
