// Import necessary packages and files
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Import custom components, data, and other screens
import '../components/custom_app_bar.dart';
import '../components/custom_tab_bar.dart';
import '../components/responsive.dart';
import '../data/data.dart';
import 'screens.dart';

// Define the main navigation screen as a StatefulWidget
class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

// State class for the main navigation screen
class _NavScreenState extends State<NavScreen> {
  // Define a list of screens to display in the IndexedStack
  final List<Widget> _screens = [
    const HomeScreen(), // Home screen
    const Scaffold(), // Placeholder for screen 2
    const Scaffold(), // Placeholder for screen 3
    const Scaffold(), // Placeholder for screen 4
    const Scaffold(), // Placeholder for screen 5
    const Scaffold(), // Placeholder for screen 6
  ];

  // Define a list of icons corresponding to each screen
  final List<IconData> _icons = [
    Icons.home, // Home icon
    Icons.ondemand_video, // Video icon
    MdiIcons.accountCircleOutline, // Account icon
    MdiIcons.accountGroupOutline, // Group icon
    MdiIcons.bellOutline, // Bell icon
    Icons.menu, // Menu icon
  ];

  // Initialize the selected index to the home screen (index 0)
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        // Display the custom app bar on desktop (PreferredSize)
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 120.0),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : null,

        // Display the selected screen using IndexedStack
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),

        // Display the custom tab bar on mobile and tablet
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                padding: const EdgeInsets.only(bottom: 12.0),
                color: Colors.white,
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
