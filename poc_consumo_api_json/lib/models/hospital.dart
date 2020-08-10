class Hospital {
  String id;
  String placeId;
  String name;
  int latitude;
  int longitude;
  Null geometry;
  int score;
  Null formattedAddress;
  int nps;
  Null vicinity;
  Null address;
  Null position;
  bool synchronized;
  String dateCreate;

  Hospital(
      {this.id,
      this.placeId,
      this.name,
      this.latitude,
      this.longitude,
      this.geometry,
      this.score,
      this.formattedAddress,
      this.nps,
      this.vicinity,
      this.address,
      this.position,
      this.synchronized,
      this.dateCreate});

  Hospital.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placeId = json['place_Id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    geometry = json['geometry'];
    score = json['score'];
    formattedAddress = json['formatted_address'];
    nps = json['nps'];
    vicinity = json['vicinity'];
    address = json['address'];
    position = json['position'];
    synchronized = json['synchronized'];
    dateCreate = json['dateCreate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['place_Id'] = this.placeId;
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['geometry'] = this.geometry;
    data['score'] = this.score;
    data['formatted_address'] = this.formattedAddress;
    data['nps'] = this.nps;
    data['vicinity'] = this.vicinity;
    data['address'] = this.address;
    data['position'] = this.position;
    data['synchronized'] = this.synchronized;
    data['dateCreate'] = this.dateCreate;
    return data;
  }
}
