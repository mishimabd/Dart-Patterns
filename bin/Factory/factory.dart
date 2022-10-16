import 'dart:io';
import "dart:math";


abstract class NationInterface {
  nameOfTheDaughter();
}

class Kazakh implements NationInterface {
  @override
  nameOfTheDaughter() {
    var list = ['Айсулу', 'Айгерим', 'Райхан', 'Бинара', 'Мерей', 'Актоты'];
    var element = list[Random().nextInt(list.length)];
    print(element);
  }
}

class Russian implements NationInterface {
  @override
  nameOfTheDaughter() {
    var list = ['Екатерина', 'Настя', 'Татьяна', 'Елена', 'Светлана', 'София'];
    var element = list[Random().nextInt(list.length)];
    print(element);
  }
}

class Italian implements NationInterface {
  @override
  nameOfTheDaughter() {
    var list = ['Альда', 'Аннета ', 'Доменика ', 'Кросетта', 'Луиджина', 'Мирелла'];
    var element = list[Random().nextInt(list.length)];
    print(element);
  }
}

abstract class NationFactory {
  NationInterface createNation();
}

class KazakhFactory implements NationFactory {
  @override
  NationInterface createNation() {
    return Kazakh();
  }
}

class RussianFactory implements NationFactory {
  @override
  NationInterface createNation() {
    return Russian();
  }
}

class ItalianFactory implements NationFactory {
  @override
  NationInterface createNation() {
    return Italian();
  }
}

NationFactory? createNationByYourinput(String? nation) {
  if (nation!.contains("Kazakh")) {
    return KazakhFactory();
  } else if (nation.contains("Russian")) {
    return RussianFactory();
  } else if (nation.contains("Italian")) {
    return ItalianFactory();
  } else {
    print("Choose the name type from the below");
    function();
  }
  return null;
}
function(){
  print('What kind of name do you want to give to your daughter?');
  showChoosing();
  String? name = stdin.readLineSync();
  NationFactory? nation = createNationByYourinput(name);
  NationInterface interface = nation!.createNation();
  interface.nameOfTheDaughter();
}

void main() {
  function();
}

void showChoosing() {

  print('1. Kazakh name');
  print('2. Russian name');
  print('3. Italian name');

}



