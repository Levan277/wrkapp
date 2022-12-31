class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome To The Forum",
    image: "assets/images/undraw_welcome.jpg",
    desc: "Users will be able to search up other users and follow them to see posts!",
  ),
  OnboardingContents(
    title: "Usage",
    image: "assets/images/undraw_businessman.jpg",
    desc:
    "Use the icons on the Bottom Navigation bar for returning to the Apps main home screen, searching for users or navigating back to the forums explore page. ",
  ),

];