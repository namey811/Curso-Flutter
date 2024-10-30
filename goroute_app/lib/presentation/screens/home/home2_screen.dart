import 'package:flutter/material.dart';
import 'package:goroute_app/presentation/screens/widgets/side_menu2.dart';

class Home2Screen extends StatelessWidget {
  const Home2Screen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Tecnar Menu'),
      ),
      body: const Text('Tecnar Menu'),
      drawer: SideMenu2(scafolldKey: scaffoldKey),
    );
  }
}