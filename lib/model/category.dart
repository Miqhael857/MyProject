class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'] as String, item['courses'] as int,
        item['image'] as String))
    .toList();

var categoriesData = [
  {
    'name': "Computer Science",
    'courses': 7,
    'image': "assets/images/CS.jpg",
  },
  {
    'name': "Information Technology",
    'courses': 7,
    'image': "assets/images/IT2.png"
  },
  {
    'name': "Computer Engineering",
    'courses': 7,
    'image': "assets/images/CE.jpg"
  },
];
