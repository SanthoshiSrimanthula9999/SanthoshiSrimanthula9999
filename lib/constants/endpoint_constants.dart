import 'app_constants.dart';

abstract class EndpointConstants {
  static final String catalogApp = "${AppConstants.BASE_URL}catalog/api";
  static final String crm = "${AppConstants.BASE_URL}crm/api";
  static final String orm = "${AppConstants.BASE_URL}order/api";
  static final String customs = "${AppConstants.BASE_URL}customs/api";
  static final String feedback = "${AppConstants.BASE_URL}feedbacks/api";
  static final String payments = "${AppConstants.BASE_URL}payments/api";
  static final String wordfilter = "${AppConstants.BASE_URL}api/wordfilter";
}
