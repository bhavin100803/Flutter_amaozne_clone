class IconModel {
  String icon;
  String title;

  IconModel({required this.icon, required this.title});
  static List<IconModel> icons = [
    IconModel(icon: "assets/icons/icon_1.jpeg", title: "Discover"),
    IconModel(icon: "assets/icons/icon_2.png", title: "Arbitratry"),
    IconModel(icon: "assets/icons/icon_4.png", title: "Author nearby"),
    IconModel(icon: "assets/icons/icon_5.jpeg", title: "World wide"),
    IconModel(icon: "assets/icons/icon_6.png", title: "Audio book"),
  ];
}
