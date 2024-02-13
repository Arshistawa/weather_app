import 'package:geolocator/geolocator.dart';

class Location {
  double? latitute;
  double? longitute;

  Future<void> getCurrentLocation() async {
    try {
      var permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      longitute = position.longitude;
      latitute = position.latitude;
      print('longitute = $longitute');
      print('latitute = $latitute');
    } catch (e) {
      print('An Error Occured!!');
    }
  }
}
