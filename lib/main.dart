import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Position? firstPosition;
  Position? secondPosition;
  double distance = 0;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'My current position is ${firstPosition?.longitude},${firstPosition?.latitude},${firstPosition?.accuracy}',
                ),
              ),
              const Gap(30),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    firstPosition = await _determinePosition();
                    setState(() {});
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(200, 100),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(16.0),
                      )),
                  child: const Icon(Icons.location_on_outlined),
                ),
              ),
              const Gap(30),
              Center(
                child: Text(
                    "My current position is ${secondPosition?.longitude}, ${secondPosition?.latitude}, ${secondPosition?.accuracy}"),
              ),
              const Gap(30),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    secondPosition = await _determinePosition();
                    setState(() {});
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(200, 100),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.all(16),
                    ),
                  ),
                  child: const Icon(Icons.location_on_outlined),
                ),
              ),
              const Gap(20),
              Center(
                child: Text("Distance: ${distance}"),
              ),
              const Gap(20),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    distance = await Geolocator.distanceBetween(
                      firstPosition!.latitude,
                      firstPosition!.longitude,
                      secondPosition!.latitude,
                      secondPosition!.longitude,
                    );
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.social_distance,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
