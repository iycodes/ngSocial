import 'package:flutter/material.dart';
import 'package:minimalsocialapp/components/minor_components.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? logout;
  const MyDrawer({super.key, required this.logout});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header
              DrawerHeader(
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 5, right: 30),
                      child: Text(
                        "ngSpace",
                        style: TextStyle(fontFamily: "Audiowide", fontSize: 30),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: StaticAsset("ngspace", 35),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // home tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: const Text("H O M E"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);
                  },
                ),
              ),

              // profile tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: const Text("P R O F I L E"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);

                    // go to profile page
                    Navigator.pushNamed(context, '/profile_page');
                  },
                ),
              ),

              // search tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: const Text("U S E R S"),
                  onTap: () {
                    // pop drawer
                    Navigator.pop(context);

                    // go to profile page
                    Navigator.pushNamed(context, '/user_page');
                  },
                ),
              ),
            ],
          ),

          // logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: const Text("L O G O U T"),
              onTap: () {
                // pop drawer
                Navigator.pop(context);

                // logout
                logout!();
              },
            ),
          ),
        ],
      ),
    );
  }
}
