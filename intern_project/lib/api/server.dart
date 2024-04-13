import 'package:http/http.dart';

class Server {
  getRequest({String? url}) async {
    Response response = await get(
      Uri.parse(url!),
      headers: {
        'Content-type': 'application/json',
      },
    );

    return response;
  }
}
