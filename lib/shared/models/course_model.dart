import 'dart:convert';

class CourseModel {
  final String name;
  final String description;
  final String titration;
  final int duration;
  final int score;
  final String modality;
  final String period;
  final String ies;
  final String email;
  final String city;
  final String telephone;
  final String uf;
  final String address;
  final String category;
  final String site;

  CourseModel({
    required this.name,
    required this.description,
    required this.titration,
    required this.duration,
    required this.modality,
    required this.period,
    required this.ies,
    required this.email,
    required this.city,
    required this.telephone,
    required this.uf,
    required this.address,
    required this.category,
    this.score = -1,
    this.site = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'titration': titration,
      'duration': duration,
      'score': score,
      'modality': modality,
      'period': period,
      'ies': ies,
      'email': email,
      'city': city,
      'telephone': telephone,
      'uf': uf,
      'address': address,
      'category': category,
      'site': site,
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      name: map['name'],
      description: map['description'],
      titration: map['titration'],
      duration: map['duration'],
      score: map['score'] != null ? map['score'] : -1,
      modality: map['modality'],
      period: map['period'],
      ies: map['ies'],
      email: map['email'],
      city: map['city'],
      telephone: map['telephone'],
      uf: map['uf'],
      address: map['address'],
      category: map['category'],
      site: map['site'] != null ? map['site'] : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseModel.fromJson(String source) => CourseModel.fromMap(json.decode(source));
}
