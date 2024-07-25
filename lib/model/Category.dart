class Category {
  const Category({required this.title, required this.slug});
  final String title, slug;
}

List<Category> categorys = [
  Category(title: "Phim Bộ", slug: "phim-bo"),
  Category(title: "Phim Lẻ", slug: "phim-le"),
  Category(title: "Tv Shows", slug: "tv-shows"),
  Category(title: "Hoạt hình", slug: "hoat-hinh"),
  Category(title: "Sắp chiếu", slug: "sap-chieu")
];
