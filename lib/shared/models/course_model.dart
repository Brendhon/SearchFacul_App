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
    this.score = 0,
    this.site = '',
  });
}
