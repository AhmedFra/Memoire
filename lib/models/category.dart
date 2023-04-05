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
    name: 'Planning',
   
    thumbnail: 'assets/task-list.png',
  ),
  Category(
    name: 'Consult History',

    thumbnail: 'assets/transaction-history.png',
  ),
  Category(
    name: 'Patient Management',

    thumbnail: 'assets/stretcher.png',
  ),
  // Category(
  //   name: 'Placeholder',

  //   thumbnail: 'assets/11.png',
  // ),
];