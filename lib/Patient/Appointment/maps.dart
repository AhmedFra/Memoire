import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapApp extends StatefulWidget {
  @override
  _MapAppState createState() => _MapAppState();
}

class _MapAppState extends State<MapApp> {
  GoogleMapController? _mapController;
  Position? _currentPosition;
  Set<Marker> _markers = {};
  String _destinationAddress = '';

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      _currentPosition = position;
      _markers.clear();
      _markers.add(
        Marker(
          markerId: MarkerId('currentLocation'),
          position: LatLng(position.latitude, position.longitude),
        ),
      );
    });

    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 15.0,
        ),
      ),
    );
  }

  Future<void> _getDirections() async {
    // Replace with your destination address or coordinates
    final destination = 'Destination Address';

    // Retrieve directions using the Google Maps Directions API
    // You need to have a valid API key for this to work
    final directions = await getDirections(_currentPosition!, destination);

    setState(() {
      _destinationAddress = destination;
      _markers.add(
        Marker(
          markerId: MarkerId('destination'),
          position: LatLng(directions.endLocation.latitude, directions.endLocation.longitude),
        ),
      );
    });

    _mapController?.animateCamera(
      CameraUpdate.newLatLngBounds(directions.bounds, 100.0),
    );
  }

  Future<Directions> getDirections(Position origin, String destination) async {
    // Replace with your Google Maps API key
    final apiKey = 'YOUR_API_KEY';

    final directionsUrl =
        'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=$destination&key=$apiKey';

    final response = await http.get(Uri.parse(directionsUrl));

    if (response.statusCode == 200) {
      final directions = Directions.fromJson(json.decode(response.body));
      return directions;
    } else {
      throw Exception('Failed to get directions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map App'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              setState(() {
                _mapController = controller;
              });
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(0, 0),
              zoom: 15.0,
            ),
            markers: _markers,
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: _getCurrentLocation,
                  child: Text('Get Current Location'),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: _getDirections,
                  child: Text('Get Directions'),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Destination: $_destinationAddress',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Directions {
  final LatLngBounds bounds;
  final LatLng endLocation;

  Directions({
    required this.bounds,
    required this.endLocation,
  });

  factory Directions.fromJson(Map<String, dynamic> json) {
    final boundsJson = json['routes'][0]['bounds'];
    final northeastJson = boundsJson['northeast'];
    final southwestJson = boundsJson['southwest'];
    final bounds = LatLngBounds(
      southwest: LatLng(southwestJson['lat'], southwestJson['lng']),
      northeast: LatLng(northeastJson['lat'], northeastJson['lng']),
    );

    final endLocationJson = json['routes'][0]['legs'][0]['end_location'];
    final endLocation = LatLng(endLocationJson['lat'], endLocationJson['lng']);

    return Directions(
      bounds: bounds,
      endLocation: endLocation,
    );
  }
}

void main() {
  runApp(MapApp());
}
