import 'package:flutter/material.dart';

import 'screens/screens.dart';

class MediaApp extends StatefulWidget {
  const MediaApp({super.key});

  @override
  State<MediaApp> createState() => _MediaAppState();
}

class _MediaAppState extends State<MediaApp> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const Center(
      child: Text(
        'Page with Logo',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const HomePage(),
    const SkillsPage(),
    const PhotosPage(),
    const VideosPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationRail(
              useIndicator: true,
              minWidth: 130,
              unselectedIconTheme: const IconThemeData(size: 60),
              unselectedLabelTextStyle: const TextStyle(fontSize: 25),
              selectedLabelTextStyle: const TextStyle(fontSize: 25),
              selectedIconTheme: const IconThemeData(size: 60),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.local_activity),
                  label: Text(''),
                  padding: EdgeInsets.only(top: 20),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                  padding: EdgeInsets.only(top: 20),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.build),
                  label: Text('Skills'),
                  padding: EdgeInsets.only(top: 20),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.image),
                  label: Text('Photos'),
                  padding: EdgeInsets.only(top: 20),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.video_camera_back_rounded),
                  label: Text('Videos'),
                  padding: EdgeInsets.only(top: 20),
                ),
              ],
              labelType: labelType,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
            ),
            const VerticalDivider(
              width: 1,
              thickness: 1,
            ),
            Expanded(
              child: _screens[_selectedIndex],
            )
          ],
        ),
      ),
    );
  }
}
