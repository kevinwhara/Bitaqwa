import 'package:bitaqwa_app/screens/doa/home_doa.dart';
import 'package:bitaqwa_app/screens/home.dart';
import 'package:bitaqwa_app/screens/sholat/jadwal_sholat_screen.dart';
import 'package:bitaqwa_app/screens/zakat/home_zakat.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) =>const Home(),
        '/doa' : (context) => const HomeDoa(),
        '/zakat' : (context) => HomeZakat(),
        '/jadwal-sholat' : (context) => const JadwalSholatScreen(),
      },
    );
  }
}
