import 'package:get/get.dart';

import '../models/home_card_model.dart';

class HomeController extends GetxController {
  final listTextTabToggle = ["Offline", "Online"];
  RxInt tabTextIndexSelected = 0.obs;
  toggle(int index) => tabTextIndexSelected.value = index;
  RxInt selectedIndex = 0.obs;
  RxInt selectedMenu = 0.obs;
  List<String> ridesList =
      ["Ride Request", "Running Rides", "Upcoming Rides"].obs;
  Data data = Data(
      rideRequestData: RideRequestData(), runningRidesData: RunningRidesData());
}
