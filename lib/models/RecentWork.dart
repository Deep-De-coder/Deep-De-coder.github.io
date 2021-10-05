class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Updating GEN-Z ",
    category: "Web Development",
    image: "assets/images/GenZ_logo.png",
  ),
  RecentWork(
    id: 2,
    title: "Edu-tech ",
    category: "App Developent",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "CaptainCool  ",
    category: "Web Developent",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Portfolio ",
    category: "Flutter Project",
    image: "assets/images/work_4.png",
  ),
];
