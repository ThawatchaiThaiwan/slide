import 'package:flutter_carousel_example/models/carousel.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();
  
  static Future<dynamic> fetchCarouselData() async {
    try{
      var response = await client.get(
        Uri.parse('https://wwwdev.csmju.com/api/news'),
      );
      if(response.statusCode == 200){
        return apinewFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
}