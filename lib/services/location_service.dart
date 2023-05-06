import 'package:location/location.dart';

import '../model/common.dart';

class LocationService {

  var location = Location();

  Future<UserLocation> getLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return UserLocation(latitude: 0, longitude: 0);
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
            return UserLocation(latitude: 0, longitude: 0);
      }
    }

    _locationData = await location.getLocation();
    return UserLocation(latitude: _locationData.latitude!, longitude: _locationData.longitude!);
  }
}
