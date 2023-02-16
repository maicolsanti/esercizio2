// ignore_for_file: non_constant_identifier_names
import 'dart:math';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {}

class QuoteService {
  Future<String> getQuote() async {
    final url = Uri.parse('https://the-one-api.dev/v2/quote');
    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer xjyhlRADF6W3XPtrBrus',
    });

    final data = jsonDecode(res.body) as Map<String, dynamic>;
    // ignore: void_checks
    var r = Random().nextInt(100);
    return (data['docs'][r]['dialog']);
  }

  Future<List<String>> getQuoteCharacter(String personaggio) async {
    final charUrl = Uri.parse('https://the-one-api.dev/v2/character?name=$personaggio');
    final charRes = await http.get(charUrl, headers: {
      HttpHeaders.authorizationHeader: 'Bearer xjyhlRADF6W3XPtrBrus',
    });

    final pers = jsonDecode(charRes.body) as Map<String, dynamic>;
    final idpers = pers["docs"][0]['_id'];

    final url = Uri.parse('https://the-one-api.dev/v2/character/$idpers/quote');
    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer xjyhlRADF6W3XPtrBrus',
    }); 

    List<String> quotes = [];
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    
    data['docs'].forEach((value) {
      quotes.add(value['dialog']);
    });
    
    return (quotes);
  }
}

