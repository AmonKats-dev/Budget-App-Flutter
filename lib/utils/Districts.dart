class Districts {
  List<District> _districts;

  Districts.intializeDistricts() {
    _districts.add(District('Adjumani'));
    _districts.add(District('Apac'));
    _districts.add(District('Arua'));
    _districts.add(District('Bukomansimbi'));
    _districts.add(District('Bugiri'));
    _districts.add(District('Bundibugyo'));
    _districts.add(District('Bushenyi'));
    _districts.add(District('Busia'));
    _districts.add(District('Gulu'));
    _districts.add(District('Hoima'));
    _districts.add(District('Iganga'));
    _districts.add(District('Jinja'));
    _districts.add(District('Kabale'));
    _districts.add(District('Kabarole'));
    _districts.add(District('Kaberamaido'));
    _districts.add(District('Kalangala'));
    _districts.add(District('Kamuli'));
    _districts.add(District('Kamwenge'));
    _districts.add(District('Kanungu'));
    _districts.add(District('Kapchorwa'));
    _districts.add(District('Kasese'));
    _districts.add(District('Katakwi'));
    _districts.add(District('Kayunga'));
    _districts.add(District('Kibaale'));
    _districts.add(District('Kiboga'));
    _districts.add(District('Kisoro'));
  }

  List<District> get getDistricts => _districts;
}

class District {
  String _title;

  District(this._title);

  String get getTitle => _title;
}
