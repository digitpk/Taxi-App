import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/controllers/location_controller.dart';
import 'package:taxi_app/models/google_location.dart';
import 'package:taxi_app/models/taxi.dart';
import 'package:taxi_app/models/taxi_booking.dart';
import 'package:taxi_app/models/taxi_driver.dart';

class TaxiBookingController {
  static Future<double> getPrice(TaxiBooking taxiBooking) async {
    return 150;
  }

  static Future<TaxiDriver> getTaxiDriver(TaxiBooking booking) async {
    return TaxiDriver.named(
        driverPic:
            "https://avatars0.githubusercontent.com/u/32742621?s=460&u=c6c403e3d7975bca9037778747b14511ea19af34&v=4",
        driverName: "Driver",
        driverRating: 4.0,
        taxiDetails: "Toyota (GAQ-17-1234)");
  }

  static Future<List<Taxi>> getTaxisAvailable() async {
    GoogleLocation location = await LocationController.getCurrentLocation();
    const double maxRadius = 200 / 111300;
    Random random = Random();
    List<Taxi> taxis = List<Taxi>.generate(10, (index) {
      double u = random.nextDouble();
      double v = random.nextDouble();
      double w = maxRadius + sqrt(u);
      double t = 2 * pi * v;
      double x1 = w * cos(t);
      double y1 = w * sin(t);
      x1 = x1 / cos(y1);
      LatLng oldPos = location.position;
      return Taxi.named(
          id: "$index",
          position: LatLng(x1 + oldPos.latitude, y1 + oldPos.longitude),
          title: "Taxi $index");
    });
    return taxis;
  }
}
