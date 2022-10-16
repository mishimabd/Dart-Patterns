abstract class NationInterface {
  whatCanNotEat();
}

class Kazakh implements NationInterface {
  @override
  String? whatCanNotEat() {
    return "'I can't drink vodka' said Kairat. \n";
  }
}

class NationDecorator implements NationInterface {
  NationInterface? nationInterface;

  NationDecorator(this.nationInterface);

  @override
  whatCanNotEat() {
    return nationInterface?.whatCanNotEat();
  }
}

class Russian extends NationDecorator {
  Russian(super.nationInterface);

  String? whatCanNotEatRussian() => " And 'I can't eat besh' said Sergey. \n";

  @override
  whatCanNotEat() {
    return super.whatCanNotEat() + whatCanNotEatRussian();
  }
}

class Italian extends NationDecorator {
  Italian(super.nationInterface);

  String? whatCanNotEatItalian() => "'What about pizza? :)' said Morgani)";

  @override
  whatCanNotEat() {
    return super.whatCanNotEat() + whatCanNotEatItalian();
  }
}

void main() {
  NationInterface? person = Italian(Russian(Kazakh()));
  print(person.whatCanNotEat());
}
