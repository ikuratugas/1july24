import 'package:flutter/material.dart';
import 'package:skripsi_tahap_awal/screens/home_screen.dart';
import 'package:skripsi_tahap_awal/screens/login_screen.dart';

class PenagihanScreen extends StatelessWidget {
  const PenagihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
                icon: Text(
              "Belum Selesai",
              style: TextStyle(fontSize: 12),
            )),
            Tab(
                icon: Text(
              "Selesai",
              style: TextStyle(fontSize: 12),
            )),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: LoginScreen(),
          ),
        ]),
      ),
    );
  }
}
