import 'package:base_client/helper/dialog_helper.dart';
import 'package:base_client/services/app_exceptions.dart';

class BaseController {
  void handleError(error) {
    if (error is BadRequestException) {
      //Show dialog
      var message = error.message!;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog();
    } else if (error is ApiNotRespondingException) {
      DialogHelper.showErrorDialog();
    }
  }
}
