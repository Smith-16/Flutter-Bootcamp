void main() {
  Vehicle car = Car();
  Vehicle bike = Bike();

  car.showDetails();
  bike.showDetails();
}

class Vehicle {
  void showDetails() {
    print("This is a vehicle.");
  }
}

class Car extends Vehicle {
  @override
  void showDetails() {
    print("Type: Car\nFuel: Petrol\nMax Speed: 180 km/h");
  }
}

class Bike extends Vehicle {
  @override
  void showDetails() {
    print("Type: Bike\nFuel: Electric\nMax Speed: 100 km/h");
  }
}