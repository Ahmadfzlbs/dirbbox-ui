import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  Drawer({Key? key, required ListView child, required this.title}) : super(key: key);

  final String title;


  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {

  @override
  Widget build(BuildContext context) {
    int pilih = 0;

    const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: optionStyle,
      ),
      Text(
        'Index 1: Profile',
        style: optionStyle,
      ),
      Text(
        'Index 2: Storage',
        style: optionStyle,
      ),
      Text(
        'Index 3: Shared',
        style: optionStyle,
      ),
      Text(
        'Index 4: Stats',
        style: optionStyle,
      ),
      Text(
        'Index 5: Settings',
        style: optionStyle,
      ),
      Text(
        'Index 6: Help',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        pilih = index;
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[pilih],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        title: '',
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: pilih == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              selected: pilih == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Storage'),
              selected: pilih == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Shared'),
              selected: pilih == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Stats'),
              selected: pilih == 4,
              onTap: () {
                // Update the state of the app
                _onItemTapped(4);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              selected: pilih == 5,
              onTap: () {
                // Update the state of the app
                _onItemTapped(5);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help'),
              selected: pilih == 6,
              onTap: () {
                // Update the state of the app
                _onItemTapped(6);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
