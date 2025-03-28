import 'package:code_rabbit_flutter/models/vehicle.dart';

class Sedan implements Vehicle {
  @override
  void open() {
    print('Sedan door opened');
  }

  @override
  void start() {
    print('Fuel engine started');
  }
}
