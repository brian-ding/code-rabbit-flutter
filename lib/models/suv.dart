import 'package:code_rabbit_flutter/models/vehicle.dart';

class Suv implements Vehicle {
  @override
  void open() {
    print('SUV door opened');
  }

  @override
  void start() {
    print('Fuel engine started');
  }
}
