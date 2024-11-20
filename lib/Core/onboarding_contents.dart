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
    title: "Toy Shope",
    image: "assets/images/toy-kids-play.webp",
    desc: "Explore top Toys in World",
  ),
  OnboardingContents(
    title: "Delivery on the way",
    image: "assets/images/deliveryshopping-.png",
    desc:
    "Get your order by speed delivery",
  ),
  OnboardingContents(
    title: "Delivery Arrived",
    image: "assets/images/deliveryarrived.jpg",
    desc:
    "Order is arrived at your place",
  ),
];