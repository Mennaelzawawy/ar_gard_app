import 'package:ar_app/services/save_token.dart';
import 'package:http/http.dart' as http;


class AuthenticatedService {
  Future<http.Response> fetchProtectedData() async {
    String? token = await getToken();

    if (token == null) {
      throw Exception('Token is not available');
    }

    final response = await http.get(
      Uri.parse('https://your-api-endpoint.com/protected-data'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  // Add more methods for other authenticated requests as needed
}
