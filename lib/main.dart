import 'package:flutter/material.dart';
import 'crypto_data.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeSreen(),
    );
  }
}

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            'Cryptocurrency is a digital or virtual currency that uses cryptography for security. It operates independently of a central bank and can be transferred directly between individuals without the need for intermediaries like banks. Cryptocurrencies use decentralized technology, called blockchain, to manage and record transactions. The most well-known cryptocurrency is Bitcoin, but there are many other cryptocurrencies available, each with its own unique features and characteristics. Cryptocurrencies have gained popularity due to their potential for anonymity, security, and the ability to bypass traditional financial institutions. However, they also come with risks such as volatility, lack of regulation, and potential for fraud.',
            style: GoogleFonts.sulphurPoint(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CryptoData(curr: 'idr')),
          );
        },
        child: const Icon(Icons.graphic_eq_outlined),
      ),
    );
  }
}
