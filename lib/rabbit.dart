enum RabbitState { none, sleep, run, walk, eat }

class Rabbit {
  String _name = '';
  RabbitState _state = RabbitState.none;

  Rabbit({String name = '', RabbitState state = RabbitState.none}) {
    _name = name;
    _state = state;
  }

  get name => _name;
  get state => _state;

  updateState(RabbitState state) {
    _state = state;
  }
}
