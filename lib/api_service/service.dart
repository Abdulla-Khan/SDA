import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:social/model/api_model.dart';

class ApiService {
  fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://modelhire.herokuapp.com/'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new UserApiModel.fromJson(job)).toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Users');
    }
  }
}
