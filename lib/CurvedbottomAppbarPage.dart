import 'package:flutter/material.dart';
import 'package:rentalluiscreen/ExplorePage.dart';

class CurvedBottomAppBarPage extends StatefulWidget {
  @override
  _CurvedBottomAppBarPageState createState() => _CurvedBottomAppBarPageState();
}

class _CurvedBottomAppBarPageState extends State<CurvedBottomAppBarPage> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getSelectedWidget(),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xffff6666),
        child: Image.asset(
          "assets/images/Logo.png",
          scale: 2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildNavItem(Icons.search, "Explore", 0),
              _buildNavItem(Icons.favorite_border, "Saved", 1),

              // Trips text that changes color when selected
              GestureDetector(
                onTap: () => _onItemTapped(2), // Set the index for the "Trips" text
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Trips",
                    style: TextStyle(
                      color: _selectedIndex == 2 ? Color(0xffff6666) : Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              _buildNavItem(Icons.message_outlined, "Inbox", 3),
              _buildNavItem(Icons.person_outline, "Profile", 4),
            ],
          ),
        ),
      ),
    );
  }

  // Method to return different widgets based on selected index
  Widget _getSelectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return Explorepage();
      case 1:
        return Text('Saved Page');
      case 2:
        return Text('Trips');
      case 3:
        return Text('Inbox pg');
      case 4:
        return Text('Profile Page'); // Add a page for "Trips"
      default:
        return Text('Profile Page');
    }
  }

  // Method to build each navigation item with icon and text
  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 28,
            color: _selectedIndex == index ? Color(0xffff6666) : Colors.black54,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Color(0xffff6666) : Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
