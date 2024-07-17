import 'package:flutter/material.dart';
import 'package:frontend/utilities.dart';

// This is the type used by the popup menu below.
enum GUMenu { History, Settings, ProfileView, SwitchAccount, Logout }

class homePageGU extends StatelessWidget {
  const homePageGU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GUMenu? selectedMenu;

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              PopupMenuButton<GUMenu>(
                onSelected: (GUMenu result) {
                  selectedMenu = result;
                  // Handle navigation or other actions based on the selected menu item
                  switch (selectedMenu) {
                    case GUMenu.History:
                      // Navigate to '/history' or perform related action
                      break;
                    case GUMenu.Settings:
                      // Navigate to '/settings' or perform related action
                      break;
                    case GUMenu.ProfileView:
                      // Navigate to '/profile' or perform related action
                      break;
                    case GUMenu.SwitchAccount:
                      // Navigate to '/switch_account' or perform related action
                      break;
                    case GUMenu.Logout:
                      // Navigate to '/logout' or perform related action
                      break;
                    default:
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<GUMenu>>[
                  const PopupMenuItem<GUMenu>(
                    value: GUMenu.History,
                    child: ListTile(
                      leading: Icon(Icons.history),
                      title: Text('History'),
                    ),
                  ),
                  const PopupMenuItem<GUMenu>(
                    value: GUMenu.Settings,
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                  ),
                  const PopupMenuItem<GUMenu>(
                    value: GUMenu.ProfileView,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile View'),
                    ),
                  ),
                  const PopupMenuItem<GUMenu>(
                    value: GUMenu.SwitchAccount,
                    child: ListTile(
                      leading: Icon(Icons.swap_horiz),
                      title: Text('Switch Account'),
                    ),
                  ),
                  const PopupMenuItem<GUMenu>(
                    value: GUMenu.Logout,
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ),
                ],
                child: Icon(
                  Icons.menu,
                  size: 40,
                  color: Color.fromRGBO(0, 224, 255, 1),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width:
                        200, // Both width and height should be the same to form a circle
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[400],
                      shape: BoxShape.circle, // Makes the container circular
                    ),
                    child: ClipOval(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(child: Text('profile picture')),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 430, vertical: 10),
                    child: Row(
                      children: [
                        Select(
                          label: 'Request',
                          route: '/',
                          icon: Icons.add_shopping_cart_rounded,
                        ),
                        SizedBox(width: 20),
                        Select(
                            label: 'Provide',
                            route: '/',
                            icon: Icons.volunteer_activism_rounded),
                        // Add more Select widgets as needed
                      ],
                    ),
                  ),
                  SizedBox(height: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: homePageGU(),
  ));
}