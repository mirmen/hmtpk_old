import 'package:flutter/material.dart';
import 'package:hmtpk/presentation/shedulepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
  // initializeDateFormatting() для локализации виджета TableCalendar
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hmtpk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        useMaterial3: true,
       ),
      initialRoute: '/shedule',
      routes: {
        '/shedule': (context) => const ShedulePage(),
      },
    );
  }
}

