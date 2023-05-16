class WelcomePageModel {
  final String name;
  final String title;
  final String subTitle;
  final String imgPath;
  final List<String> greetings;

  WelcomePageModel({
    required this.name,
    required this.title,
    required this.subTitle,
    required this.imgPath,
    required this.greetings
  });

  factory WelcomePageModel.fromDatabase(Map<String, dynamic> doc) {
    return WelcomePageModel(
      name: doc['name'], 
      title: doc['title'], 
      subTitle: doc['subTitle'], 
      imgPath: doc['imgPath'], 
      greetings: (doc['greetings'] as List<dynamic>).map((e) => e.toString()).toList()
    ); 
  }
}