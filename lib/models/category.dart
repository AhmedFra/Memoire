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

    thumbnail: 'assets/transaction-history.png',
  ),
  Category(
    name: 'My patients',

    thumbnail: 'assets/stretcher.png',
  ),
   Category(
    name: 'My profile',
   
    thumbnail: 'assets/task-list.png',
  ),
  // Category(
  //   name: 'Placeholder',

  //   thumbnail: 'assets/11.png',
  // ),
];