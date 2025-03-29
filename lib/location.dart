import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String locationMessage = "Tap below to detect location";

  Future<void> _detectLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        locationMessage = "Location services are disabled.";
      });
      return;
    }

    // Request location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          locationMessage = "Location permission denied.";
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        locationMessage = "Location permission permanently denied. Enable from settings.";
      });
      return;
    }

    // Fetch the current location
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      locationMessage = "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location"),leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
          icon: Icon(Icons.arrow_back,color: Colors.purpleAccent,)),
        backgroundColor: Colors.purple[50],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
             decoration: InputDecoration(
              hintText: "Search for your city",
              prefixIcon: const Icon(Icons.search),
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8.0),
                 borderSide: BorderSide.none,
               ),
               //filled: true,
            // fillColor: Colors.grey[200],
          ),
           ),
          SizedBox(height: 5),
          Divider(thickness: 1,color: Colors.purpleAccent,),
          Text(
            locationMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextButton.icon(
            icon: const Icon(Icons.my_location,
            color: Colors.purpleAccent,),
            label: const Text("Auto Detect My Location",
            style: TextStyle(color: Colors.purpleAccent),),
            onPressed: _detectLocation,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

