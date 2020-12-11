import 'package:dipe_project/Diseases/bloc/centrosCercanos/geolocalizador.dart';
import 'package:dipe_project/Diseases/bloc/centrosCercanos/place.dart';
import 'package:dipe_project/Diseases/bloc/centrosCercanos/places_service.dart';
import 'package:dipe_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locatorService = ServicioGeolocalizador();
    final placesService = PlacesService();

    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => locatorService.getLocation()),
        ProxyProvider<Position,Future<List<Place>>>(
          update: (context, position, places) {
            return (position != null)
                ? placesService.getPlaces(position.latitude, position.longitude)
                : null;
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getAplicationRoutes(),
      ),
    );
  }
}