class GalaxyPlanets {
  String image;
  String title;
  String location;
  String gravity;
  String distosun;
  String distoearth;

  GalaxyPlanets({
    required this.image,
    required this.title,
    required this.location,
    required this.gravity,
    required this.distosun,
    required this.distoearth,
  });
}

List<GalaxyPlanets> l1 = [
  GalaxyPlanets(
    image: "assets/images/mars.png",
    title: "Mars",
    location: "54.6m km",
    gravity: "3.711 m/s²",
    distosun: "209.03 million km",
    distoearth: "229.03 million km",
  ),
  GalaxyPlanets(
    image: "assets/images/mercury.png",
    title: "Mercury",
    location: "57.9m km",
    gravity: "3.7 m/s²",
    distosun: "68.399 million km",
    distoearth: "83.268 million km",
  ),
  GalaxyPlanets(
    image: "assets/images/moon.png",
    title: "Moon",
    location: "115.9m km",
    gravity: "3.93 m/s²",
    distosun: "",
    distoearth: "",
  ),
  GalaxyPlanets(
    image: "assets/images/earth.png",
    title: "Earth",
    location: "117.2m km",
    gravity: "3.4 m/s²",
    distosun: "",
    distoearth: "",
  ),
  GalaxyPlanets(
    image: "assets/images/neptune.png",
    title: "Neptune",
    location: "120.2m km",
    gravity: "3.78 m/s²",
    distosun: "",
    distoearth: "",
  ),
];
