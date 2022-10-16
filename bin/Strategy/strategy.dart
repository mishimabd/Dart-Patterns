abstract class NationStrategy {
  String declare();
}

class KazakhStrategy implements NationStrategy {
  @override
  declare() => "I'm Kazakh";
}

class RussianStrategy implements NationStrategy {
  @override
  declare() => "I'm Russian";
}

class ItalianStrategy implements NationStrategy {
  @override
  declare() => "I'm Italian";
}

class Nation {
  String name;
  NationStrategy nationality;

  Nation(this.name, this.nationality);
}
 

void main() {


  var kazakh = Nation("Kairat", KazakhStrategy());
  var russian = Nation("Sergey", RussianStrategy());
  var italian = Nation("Morgani", ItalianStrategy());
  

  for (var person in [kazakh, russian, italian]) {
    print("Hey ${person.name}, what is your nationality?");
    print("${person.nationality.declare()}!\r\n");
  }
}
