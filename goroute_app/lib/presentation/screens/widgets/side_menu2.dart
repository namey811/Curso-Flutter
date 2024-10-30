import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goroute_app/config/menu/menu_items.dart';


class SideMenu2 extends StatefulWidget {
  
  final GlobalKey<ScaffoldState> scafolldKey;

  const SideMenu2(
    {super.key,
    required this.scafolldKey
  });

  @override
  State<SideMenu2> createState() => _SideMenu2State();
}

class _SideMenu2State extends State<SideMenu2> {
  int navDrawerIndex =0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          final menuItem = appMenuItems[value];
          context.push(menuItem.link);
          widget.scafolldKey.currentState?.closeDrawer();
        });
      },
        children: [
            const Padding(padding: EdgeInsets.fromLTRB(28, 10, 28, 10), child: Text('MENU PRINCIPAL'),),

          ...appMenuItems.sublist(0,3).map(
            (item)=> NavigationDrawerDestination
                      (
                      icon: Icon(item.icon), 
                      label: Text(item.title))
            ),

          const Padding(padding: EdgeInsets.fromLTRB(28, 10, 28, 10), child: Divider()),   

          ...appMenuItems.sublist(3).map(
            (item)=> NavigationDrawerDestination
                      (
                      icon: Icon(item.icon), 
                      label: Text(item.title))
            ),         

        ]);
  }
}