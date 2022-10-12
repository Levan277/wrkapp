import 'package:flutter/material.dart';
import 'package:wrkapp/widgets/Asset_player.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: AssetPlayerWidget(asset: 'assets/u1_sec1_equity.mp3', description: 'pokemon',),
    ));
  }
}
