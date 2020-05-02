import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxi_app/models/google_location.dart';

class LocationController {
  static Future<GoogleLocation> getCurrentLocation() async {
    return GoogleLocation("AIzaSyDNGZSpnI-IHyXsatvA3qB3mtcbIOWAp8I",
        LatLng(32.204886, 74.1968862), "DIGIT Pakistan, Grw, PK");
  }

  static Future<GoogleLocation> getLocationfromId(LatLng position) async {
    return GoogleLocation("AIzaSyDNGZSpnI-IHyXsatvA3qB3mtcbIOWAp8I",
        LatLng(32.1604775, 74.2094198), "Meeeran Gee plaza, Grw, PK");
  }

  static Future<List<LatLng>> getPolylines(LatLng start, LatLng end) async {
    List<Map> map = [
      {"lat": 40.7835246, "lng": -73.9651392},
      {"lat": 40.74700869999999, "lng": -73.9870749},
      {"lat": 40.7836479, "lng": -73.96495809999999},
      {"lat": 40.78148909999999, "lng": -73.9627453},
      {"lat": 40.7802148, "lng": -73.9613768},
      {"lat": 40.74653929999999, "lng": -73.9859729},
      {"lat": 40.74700869999999, "lng": -73.9870749}
    ];
    return map.map((val) => LatLng(val["lat"], val["lng"])).toList();
  }
}
