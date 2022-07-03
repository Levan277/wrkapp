class Category {
  String thumbnail;
  String name;
  String noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Familiarizing Yourself With Racism ',
    noOfCourses: "Unit 1",
    thumbnail: 'assets/images/endracism2.jpeg',
  ),
  Category(
    name: 'Power & Opression',
    noOfCourses: "Unit 2",
    thumbnail: 'assets/images/power.jpeg',
  ),
  Category(
    name: 'Racism in Canada, The past & The Present',
    noOfCourses: "Unit 3",
    thumbnail: 'assets/images/canada_flag.jpeg',
  ),
  Category(
    name: 'White Privilege',
    noOfCourses: "Unit 4",
    thumbnail: 'assets/images/privilege.jpeg',
  ),
];