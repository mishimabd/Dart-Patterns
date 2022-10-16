import 'dart:io';

class Notification {
  String? message;
  Notification({this.message});
}

class Observable {
  late List<Observer> _observers;

  Observable([List<Observer>? observers]) {
    _observers = observers ?? [];
  }

  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  void notifyObservers(Notification announce) {
    for (var observer in _observers) {
      observer.notify(announce);
    }
  }
}

class Observer {
  String? name;

  Observer({this.name});

  void notify(Notification notification) {
    print("Hey $name, ${notification.message}!");
  }
}

class FootballTime extends Observable {
  FootballTime([List<Observer>? observers]) : super(observers);
  void run() {
    print("Football is will start after 5 seconds!");

    sleep(const Duration(seconds: 5));

    notifyObservers(Notification(message: "football is started"));
  }
}

void main() {
  var nation = FootballTime(List.from([Observer(name: "Kairat")]));
  nation.registerObserver(Observer(name: "Sergey"));
  nation.registerObserver(Observer(name: "Morgani"));
  nation.registerObserver(Observer(name: "Raikhan"));
  nation.registerObserver(Observer(name: 'Arakasi'));
  nation.run();
}
