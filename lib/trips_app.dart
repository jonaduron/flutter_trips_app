import 'package:flutter/material.dart';
import 'package:trips_app/home_trip.dart';
import 'package:trips_app/profile.dart';
import 'package:trips_app/search_trips.dart';

class TripsApp extends StatefulWidget {
  
  @override
  State<TripsApp> createState() {
    return _TripsAppState();
  }
}

class _TripsAppState extends State<TripsApp> {
  
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrip(),
    SearchTrips(),
    Profile(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      //body: DescriptionPlace('Maldives', 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("")
            ),
          ],
        ),
      ),
    );
  }
}