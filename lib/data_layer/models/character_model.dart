class Character {
  int? id;
  String? name;
  String? deadOrAlive;
  String? species;
  String? gender;
  String? image;
  List<String>? episode;
  String? url;

  Character({
    this.id,
    this.name,
    this.deadOrAlive,
    this.species,
    this.gender,
    this.image,
    this.episode,
    this.url,
  });

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deadOrAlive = json['status'];
    species = json['species'];

    gender = json['gender'];
    image = json['image'];
    episode = json['episode'].cast<String>();
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['status'] = deadOrAlive;
    data['species'] = species;

    data['gender'] = gender;
    data['image'] = image;
    data['episode'] = episode;
    data['url'] = url;
    return data;
  }
}
