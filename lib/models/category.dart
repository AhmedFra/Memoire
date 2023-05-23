class Category {
  String thumbnail;
  String name;


  Category({
    required this.name,

    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'My appointments',
   
    thumbnail: 'assets/task-list.png',
  ),
  Category(
    name: 'My reports',

    thumbnail: 'assets/report.png',
  ),
  Category(
    name: 'My patients',

    thumbnail: 'assets/contracter.png',
  ),
   Category(
    name: 'My profile',
   
    thumbnail: 'assets/utilisateur.png',
  ),
  // Category(
  //   name: 'Placeholder',

  //   thumbnail: 'assets/11.png',
  // ),
];