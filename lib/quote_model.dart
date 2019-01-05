class Quote {
  final String quote;
  String personName;
  String imageURL;

  Quote(this.quote, {this.personName, this.imageURL});
}

List<Quote> quotes = [
  Quote("Sometimes you must hurt in order to know, fall in order to grow, lose in order to gain because life's greatest lessons are learned through pain.", personName: "PAIN", imageURL: "assets/images/Pain.png"),
  Quote("Talking about peace whilst spilling blood, it's something that only humans can do.", personName: "Uchiha Madara", imageURL: "assets/images/Madara.jpg"),
  Quote("Don't be afraid of death, be afraid of the unlived life.", personName: "Minato Namikaze", imageURL: "assets/images/Minato.jpg"),
  Quote("If you don't risk your life, you can't create a future. Right?", personName: "Monkey D. luffy", imageURL: "assets/images/Luffy.jpg"),
  Quote("I understand now. Even if I must take the devil's fruit, I must gain power. I am an avenger.", personName: "Sasuke Uchiha", imageURL: "assets/images/Sasuke.jpg"),
];