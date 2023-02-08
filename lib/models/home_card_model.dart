class Data {
  RideRequestData rideRequestData;
  RunningRidesData runningRidesData;

  Data({required this.rideRequestData, required this.runningRidesData});
}

class RideRequest {
  String? ref;
  String? name;
  String? pickUpLocation;
  String? dropLocation;
  String? time;
  String? gdp;
  RideRequest({
    this.ref,
    this.name,
    this.pickUpLocation,
    this.dropLocation,
    this.time,
    this.gdp,
  });
}

class RideRequestData {
  List<RideRequest> rideRequestList = [
    RideRequest(
      ref: "46kja",
      name: "Muhammad Noman",
      pickUpLocation: "9820459870",
      dropLocation: "ladkflj",
      time: "08:00",
      gdp: "200",
    ),
    RideRequest(
      ref: "46kja",
      name: "Adeel Ahmad",
      pickUpLocation: "ttttttt",
      dropLocation: "lllllllll",
      time: "08:00",
      gdp: "204",
    ),
    RideRequest(
      ref: "46kja",
      name: "Adeel Ahmad",
      pickUpLocation: "ttttttt",
      dropLocation: "lllllllll",
      time: "08:00",
      gdp: "204",
    ),
  ];
}

class RunningRides {
  String? ref;
  String? name;
  String? pickUpLocation;
  String? dropLocation;
  String? time;
  String? gdp;
  RunningRides(
      {this.ref,
      this.name,
      this.pickUpLocation,
      this.dropLocation,
      this.time,
      this.gdp});
}

class RunningRidesData {
  List<RunningRides> runningRidesList = [
    RunningRides(
      ref: "46kja",
      name: "Muhammad Noman",
      pickUpLocation: "9820459870",
      dropLocation: "ladkflj",
      time: "08:00",
      gdp: "200",
    ),
    RunningRides(
      ref: "46kja",
      name: "Adeel Ahmad",
      pickUpLocation: "ttttttt",
      dropLocation: "lllllllll",
      time: "08:00",
      gdp: "204",
    ),
  ];
}
