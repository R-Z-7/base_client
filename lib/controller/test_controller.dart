import 'package:base_client/controller/base_controller.dart';
import 'package:base_client/services/base_client.dart';

class TestController with BaseController {
  Future<void> getData() async {
    var response = await BaseClient()
        .get('https://jsonplaceholder.typicode.com', '/todos/1')
        .catchError(handleError);
    print(response);
  }
}
