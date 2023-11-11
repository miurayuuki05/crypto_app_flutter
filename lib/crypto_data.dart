import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoData extends StatefulWidget {
  final String curr;
  const CryptoData({Key? key, required this.curr}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CryptoDataState createState() => _CryptoDataState();
}

class _CryptoDataState extends State<CryptoData> {
  String curr = 'idr';
  List<dynamic> _data = [];

  Future<List<dynamic>> _getData() async {
    final cache = DefaultCacheManager();
    final file = await cache.downloadFile(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=$curr&order=market_cap_desc');

    // ignore: unnecessary_null_comparison
    if (file != null) {
      return json.decode(await file.file.readAsString());
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    _getData().then((data) {
      setState(() {
        _data = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Data'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              _data[index]['name'],
              style: GoogleFonts.sulphurPoint(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(_data[index]['symbol'],
                style: GoogleFonts.sulphurPoint(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            trailing: Text('Rp.${_data[index]['current_price']}',
                style: GoogleFonts.sulphurPoint(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          );
        },
      ),
    );
  }
}
